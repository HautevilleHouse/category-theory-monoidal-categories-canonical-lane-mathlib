import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryMonoidalCategoriesCanonicalLaneLean.MonoidalCategoryEvidence

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

structure MonoidalFunctor (C D : Type) [Category C] [Category D] (M : MonoidalStructure C) (N : MonoidalStructure D) where
  underlyingFunctor : Functor C D
  tensorPreservation : forall X Y : C, underlyingFunctor.obj (M.tensorObj X Y) ≅ N.tensorObj (underlyingFunctor.obj X) (underlyingFunctor.obj Y)
  unitPreservation : underlyingFunctor.obj M.unitObj ≅ N.unitObj
  coherenceConditions : Prop
  coherenceConditionsTerm : coherenceConditions

structure MonoidalFunctorEvidence (C D : Type) [Category C] [Category D] (M : MonoidalStructure C) (N : MonoidalStructure D) (F : MonoidalFunctor C D M N) where
  coherenceConditionsClosed : F.coherenceConditions

def MonoidalFunctorClosed (C D : Type) [Category C] [Category D] (M : MonoidalStructure C) (N : MonoidalStructure D) (F : MonoidalFunctor C D M N) : Prop :=
  F.coherenceConditions

theorem monoidal_functor_closed_from_evidence
    (C D : Type) [Category C] [Category D] (M : MonoidalStructure C) (N : MonoidalStructure D)
    (F : MonoidalFunctor C D M N) (E : MonoidalFunctorEvidence C D M N F) : MonoidalFunctorClosed C D M N F := by
  exact E.coherenceConditionsClosed

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse