import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

structure MonoidalCategoryPackage where
  carrier : Type u
  tensorProduct : carrier → carrier → carrier
  unitObject : carrier
  associator : ∀ (A B C : carrier), tensorProduct (tensorProduct A B) C ≅ tensorProduct A (tensorProduct B C)
  leftUnitor : ∀ (A : carrier), tensorProduct unitObject A ≅ A
  rightUnitor : ∀ (A : carrier), tensorProduct A unitObject ≅ A
  pentagonIdentity : Prop
  triangleIdentity : Prop
  pentagonIdentityTerm : pentagonIdentity
  triangleIdentityTerm : triangleIdentity

structure MonoidalCategoryEvidence (P : MonoidalCategoryPackage) where
  pentagonIdentityClosed : P.pentagonIdentity
  triangleIdentityClosed : P.triangleIdentity

def MonoidalCategoryClosed (P : MonoidalCategoryPackage) : Prop :=
  P.pentagonIdentity ∧ P.triangleIdentity

theorem monoidal_category_closed_from_evidence (P : MonoidalCategoryPackage) (E : MonoidalCategoryEvidence P) : MonoidalCategoryClosed P := by
  exact And.intro E.pentagonIdentityClosed E.triangleIdentityClosed

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse