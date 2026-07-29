import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

structure MonoidalCoherencePackage (M : MonoidalCategoryData) where
  strictificationExists : Prop
  coherenceTheorem : Prop
  strictificationExistsClosed : strictificationExists
  coherenceTheoremClosed : coherenceTheorem

structure MonoidalCoherenceEvidence {M : MonoidalCategoryData} (P : MonoidalCoherencePackage M) where
  strictificationExistsClosed : P.strictificationExists
  coherenceTheoremClosed : P.coherenceTheorem

def MonoidalCoherenceClosed {M : MonoidalCategoryData} (P : MonoidalCoherencePackage M) : Prop :=
  P.strictificationExists ∧ P.coherenceTheorem

theorem monoidal_coherence_closed_from_evidence {M : MonoidalCategoryData} (P : MonoidalCoherencePackage M)
    (E : MonoidalCoherenceEvidence P) : MonoidalCoherenceClosed P := by
  exact And.intro E.strictificationExistsClosed E.coherenceTheoremClosed

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse
