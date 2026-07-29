import canonicalLaneMathlib.AdmissibleClass
import AdmissibleClass
import MonoidalCategory

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

structure ClosedMonoidalPackage (M : MonoidalCategoryPackage) where
  internalHom : Type u
  evaluation : Prop
  coevaluation : Prop
  naturality : Prop
  triangleEquations : Prop

structure ClosedMonoidalEvidence {M : MonoidalCategoryPackage}
    (C : ClosedMonoidalPackage M) where
  evaluationClosed : C.evaluation
  coevaluationClosed : C.coevaluation
  naturalityClosed : C.naturality
  triangleClosed : C.triangleEquations

def ClosedMonoidalClosed {M : MonoidalCategoryPackage}
    (C : ClosedMonoidalPackage M) : Prop :=
  C.evaluation ∧ C.coevaluation ∧ C.naturality ∧ C.triangleEquations

theorem closed_monoidal_closed_from_evidence {M : MonoidalCategoryPackage}
    (C : ClosedMonoidalPackage M) (E : ClosedMonoidalEvidence C) :
    ClosedMonoidalClosed C := by
  exact And.intro E.evaluationClosed
    (And.intro E.coevaluationClosed (And.intro E.naturalityClosed E.triangleClosed))

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse