import canonicalLaneMathlib.AdmissibleClass
import CategoryTheoryMonoidalCategoriesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse