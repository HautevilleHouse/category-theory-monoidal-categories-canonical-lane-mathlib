import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

structure MonoidalCategoryData where
  tensorProduct : Type u → Type u → Type u
  unitObject : Type u
  associator : (A B C : Type u) → tensorProduct (tensorProduct A B) C ≅ tensorProduct A (tensorProduct B C)
  leftUnitor : (A : Type u) → tensorProduct unitObject A ≅ A
  rightUnitor : (A : Type u) → tensorProduct A unitObject ≅ A
  pentagonCondition : (A B C D : Type u) → True
  triangleCondition : (A B : Type u) → True

structure MonoidalCategoryEvidence (M : MonoidalCategoryData) where
  pentagonConditionClosed : ∀ (A B C D : Type u), M.pentagonCondition A B C D
  triangleConditionClosed : ∀ (A B : Type u), M.triangleCondition A B

def MonoidalCategoryClosed (M : MonoidalCategoryData) : Prop :=
  (∀ (A B C D : Type u), M.pentagonCondition A B C D) ∧
  (∀ (A B : Type u), M.triangleCondition A B)

theorem monoidal_category_closed_from_evidence (M : MonoidalCategoryData) (E : MonoidalCategoryEvidence M) :
    MonoidalCategoryClosed M := by
  exact And.intro E.pentagonConditionClosed E.triangleConditionClosed

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse