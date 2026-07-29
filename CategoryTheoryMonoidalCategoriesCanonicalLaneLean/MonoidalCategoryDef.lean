import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

structure MonoidalCategoryData where
  Obj : Type u
  Hom : Obj → Obj → Type v
  tensorProduct : Obj → Obj → Obj
  unit : Obj
  associator : (X Y Z : Obj) → Hom (tensorProduct (tensorProduct X Y) Z) (tensorProduct X (tensorProduct Y Z))
  leftUnitor : (X : Obj) → Hom (tensorProduct unit X) X
  rightUnitor : (X : Obj) → Hom (tensorProduct X unit) X
  tensorProductAssoc : Prop
  leftUnitorNatural : Prop
  rightUnitorNatural : Prop
  pentagonIdentity : Prop
  triangleIdentity : Prop

structure MonoidalCategoryEvidence (M : MonoidalCategoryData) where
  tensorProductAssocClosed : M.tensorProductAssoc
  leftUnitorNaturalClosed : M.leftUnitorNatural
  rightUnitorNaturalClosed : M.rightUnitorNatural
  pentagonIdentityClosed : M.pentagonIdentity
  triangleIdentityClosed : M.triangleIdentity

def MonoidalCategoryClosed (M : MonoidalCategoryData) : Prop :=
  M.tensorProductAssoc ∧ M.leftUnitorNatural ∧ M.rightUnitorNatural ∧ M.pentagonIdentity ∧ M.triangleIdentity

theorem monoidal_category_closed_from_evidence (M : MonoidalCategoryData) (E : MonoidalCategoryEvidence M) : MonoidalCategoryClosed M := by
  exact And.intro E.tensorProductAssocClosed
    (And.intro E.leftUnitorNaturalClosed
      (And.intro E.rightUnitorNaturalClosed
        (And.intro E.pentagonIdentityClosed E.triangleIdentityClosed)))

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse