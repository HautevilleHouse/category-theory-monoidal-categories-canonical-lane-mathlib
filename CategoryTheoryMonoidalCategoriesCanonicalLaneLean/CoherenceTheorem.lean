import HautevilleHouse.CategoryTheoryMonoidalCategoriesCanonicalLaneLean.MonoidalAdmittedObject

/-!
# Coherence Theorem Package
-/

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

structure CoherenceTheoremPackage (O : MonoidalAdmittedObject) where
  macLaneCoherence : O.coherenceHolds

def CoherenceTheoremClosed (O : MonoidalAdmittedObject) : Prop :=
  O.coherenceHolds

theorem coherence_theorem_closed (O : MonoidalAdmittedObject) :
    CoherenceTheoremClosed O := by
  exact O.conclusion

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse