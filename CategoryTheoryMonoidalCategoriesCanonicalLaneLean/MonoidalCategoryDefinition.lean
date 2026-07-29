import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

structure MonoidalCategoryData where
  objectType : Type u
  morphismType : objectType → objectType → Type v
  tensorProduct : objectType → objectType → objectType
  unitObject : objectType
  associator : (X Y Z : objectType) → morphismType (tensorProduct (tensorProduct X Y) Z) (tensorProduct X (tensorProduct Y Z))
  leftUnitor : (X : objectType) → morphismType (tensorProduct unitObject X) X
  rightUnitor : (X : objectType) → morphismType (tensorProduct X unitObject) X
  pentagonAxiom : (W X Y Z : objectType) → 
    (associator W X Y) ◁ (id Z) ∘ (associator (tensorProduct W X) Y Z) ∘ ((id W) ▷ (associator X Y Z)) =
    associator W (tensorProduct X Y) Z ∘ associator (tensorProduct W X) Y Z
  triangleAxiom : (X Y : objectType) →
    (associator X unitObject Y) ∘ ((id X) ▷ (leftUnitor Y)) = (rightUnitor X) ▷ (id Y)

structure MonoidalCategoryEvidence (M : MonoidalCategoryData) where
  pentagonClosed : M.pentagonAxiom
  triangleClosed : M.triangleAxiom

def MonoidalCategoryClosed (M : MonoidalCategoryData) : Prop :=
  M.pentagonAxiom ∧ M.triangleAxiom

theorem monoidal_category_closed_from_evidence (M : MonoidalCategoryData) (E : MonoidalCategoryEvidence M) :
    MonoidalCategoryClosed M := by
  exact And.intro E.pentagonClosed E.triangleClosed

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse
