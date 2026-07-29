import HautevilleHouse.CategoryTheoryMonoidalCategoriesCanonicalLaneLean.MonoidalCategoryDefinitions
import HautevilleHouse.CategoryTheoryMonoidalCategoriesCanonicalLaneLean.CoherenceTheorems

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

structure MonoidalFunctor (C D : MonoidalCategory) where
  obj : C.Obj → D.Obj
  tensorPreserve : ∀ A B, D.tensor (obj A) (obj B) = obj (C.tensor A B)
  unitPreserve : D.I = obj C.I
  coherenceCompatible : Prop

structure MonoidalFunctorEvidence {C D : MonoidalCategory} (F : MonoidalFunctor C D) where
  tensorPreserveClosed : F.tensorPreserve
  unitPreserveClosed : F.unitPreserve
  coherenceCompatibleClosed : F.coherenceCompatible

def MonoidalFunctorClosed {C D : MonoidalCategory} (F : MonoidalFunctor C D) : Prop :=
  F.tensorPreserve ∧ F.unitPreserve ∧ F.coherenceCompatible

theorem monoidal_functor_closed_from_evidence {C D : MonoidalCategory}
    (F : MonoidalFunctor C D) (E : MonoidalFunctorEvidence F) :
    MonoidalFunctorClosed F := by
  exact And.intro E.tensorPreserveClosed
    (And.intro E.unitPreserveClosed E.coherenceCompatibleClosed)

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse