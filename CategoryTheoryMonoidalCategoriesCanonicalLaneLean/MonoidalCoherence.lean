import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

structure MonoidalCoherencePackage where
  macLaneTheorem : Prop
  strictificationExists : Prop
  coherenceConditionsSatisfied : Prop

structure MonoidalCoherenceEvidence (C : MonoidalCoherencePackage) where
  macLaneTheoremClosed : C.macLaneTheorem
  strictificationExistsClosed : C.strictificationExists
  coherenceConditionsSatisfiedClosed : C.coherenceConditionsSatisfied

def MonoidalCoherenceClosed (C : MonoidalCoherencePackage) : Prop :=
  C.macLaneTheorem ∧ C.strictificationExists ∧ C.coherenceConditionsSatisfied

theorem monoidal_coherence_closed_from_evidence (C : MonoidalCoherencePackage) (E : MonoidalCoherenceEvidence C) : MonoidalCoherenceClosed C := by
  exact And.intro E.macLaneTheoremClosed (And.intro E.strictificationExistsClosed E.coherenceConditionsSatisfiedClosed)

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse