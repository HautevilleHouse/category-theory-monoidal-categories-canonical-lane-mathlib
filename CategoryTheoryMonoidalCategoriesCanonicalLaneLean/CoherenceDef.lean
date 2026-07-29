import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryMonoidalCategoriesCanonicalLaneLean.MonoidalCategoryDef

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

structure CoherenceData (M : MonoidalCategoryData) where
  macLaneCoherence : Prop
  coherenceTheorem : Prop
  strictificationExists : Prop

structure CoherenceEvidence {M : MonoidalCategoryData} (C : CoherenceData M) where
  macLaneCoherenceClosed : C.macLaneCoherence
  coherenceTheoremClosed : C.coherenceTheorem
  strictificationExistsClosed : C.strictificationExists

def CoherenceClosed {M : MonoidalCategoryData} (C : CoherenceData M) : Prop :=
  C.macLaneCoherence ∧ C.coherenceTheorem ∧ C.strictificationExists

theorem coherence_closed_from_evidence {M : MonoidalCategoryData} (C : CoherenceData M) (E : CoherenceEvidence C) : CoherenceClosed C := by
  exact And.intro E.macLaneCoherenceClosed
    (And.intro E.coherenceTheoremClosed E.strictificationExistsClosed)

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse