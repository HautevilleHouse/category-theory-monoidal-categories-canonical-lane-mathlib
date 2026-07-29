import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryMonoidalCategoriesCanonicalLaneLean.MonoidalCategoryDefinitions

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

structure MacLaneCoherencePackage {P : MonoidalCategoryPackage} (E : MonoidalCategoryEvidence P) where
  pentagonCoherence : Prop
  triangleCoherence : Prop
  strictificationExists : Prop
  strictificationExistsTerm : strictificationExists
  pentagonCoherenceTerm : pentagonCoherence
  triangleCoherenceTerm : triangleCoherence

structure MacLaneCoherenceEvidence {P : MonoidalCategoryPackage} {E : MonoidalCategoryEvidence P} (M : MacLaneCoherencePackage E) where
  pentagonCoherenceClosed : M.pentagonCoherence
  triangleCoherenceClosed : M.triangleCoherence
  strictificationExistsClosed : M.strictificationExists

def MacLaneCoherenceClosed {P : MonoidalCategoryPackage} {E : MonoidalCategoryEvidence P} (M : MacLaneCoherencePackage E) : Prop :=
  M.pentagonCoherence ∧ M.triangleCoherence ∧ M.strictificationExists

theorem mac_lane_coherence_closed_from_evidence
    {P : MonoidalCategoryPackage} {E : MonoidalCategoryEvidence P} (M : MacLaneCoherencePackage E)
    (Ev : MacLaneCoherenceEvidence M) : MacLaneCoherenceClosed M := by
  exact And.intro Ev.pentagonCoherenceClosed (And.intro Ev.triangleCoherenceClosed Ev.strictificationExistsClosed)

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse