import canonicalLaneMathlib.AdmissibleClass
import CategoryTheoryMonoidalCategoriesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

def ConstrainedMonoidalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_monoidal_closure (A : AdmissibleClass) :
    ConstrainedMonoidalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse