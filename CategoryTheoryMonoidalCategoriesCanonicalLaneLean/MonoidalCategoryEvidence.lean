import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryMonoidalCategoriesCanonicalLaneLean.MonoidalStructure

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

structure MonoidalCategoryEvidence (C : Type) [Category C] (M : MonoidalStructure C) where
  pentagonIdentityClosed : M.pentagonIdentity
  triangleIdentityClosed : M.triangleIdentity

def MonoidalCategoryClosed (C : Type) [Category C] (M : MonoidalStructure C) : Prop :=
  M.pentagonIdentity ∧ M.triangleIdentity

theorem monoidal_category_closed_from_evidence
    (C : Type) [Category C] (M : MonoidalStructure C) (E : MonoidalCategoryEvidence C M) :
    MonoidalCategoryClosed C M := by
  exact And.intro E.pentagonIdentityClosed E.triangleIdentityClosed

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse