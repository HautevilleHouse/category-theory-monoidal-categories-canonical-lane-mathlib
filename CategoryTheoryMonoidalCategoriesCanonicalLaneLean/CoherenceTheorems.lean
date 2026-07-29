import HautevilleHouse.CategoryTheoryMonoidalCategoriesCanonicalLaneLean.MonoidalCategoryDefinitions

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

structure CoherencePackage (C : MonoidalCategory) where
  pentagonSatisfied : C.pentagonCondition
  triangleSatisfied : C.triangleCondition

structure CoherenceEvidence {C : MonoidalCategory} (P : CoherencePackage C) where
  pentagonClosed : P.pentagonSatisfied
  triangleClosed : P.triangleSatisfied

def CoherenceClosed {C : MonoidalCategory} (P : CoherencePackage C) : Prop :=
  P.pentagonSatisfied ∧ P.triangleSatisfied

theorem coherence_closed_from_evidence {C : MonoidalCategory}
    (P : CoherencePackage C) (E : CoherenceEvidence P) :
    CoherenceClosed P := by
  exact And.intro E.pentagonClosed E.triangleClosed

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse