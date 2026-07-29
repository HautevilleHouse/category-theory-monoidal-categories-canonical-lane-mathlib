import HautevilleHouse.CategoryTheoryMonoidalCategoriesCanonicalLaneLean.MonoidalCategory

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

structure FrobeniusMonoidal (M : MonoidalCategory) where
  comultiplication : (X : M.obj) → M.hom X (M.tensorObj X X)
  counit : (X : M.obj) → M.hom X M.unit
  frobenius : (X : M.obj) → (M.comp (M.tensorHom (M.id X) (comultiplication X)) (M.comp (M.associator X X X) (M.tensorHom (comultiplication X) (M.id X)))) =
    (M.comp (comultiplication X) (M.comp (comultiplication X) (M.id X)))
  frobeniusClosed : frobenius

structure FrobeniusMonoidalEvidence (M : MonoidalCategory) (F : FrobeniusMonoidal M) where
  frobeniusClosed : F.frobenius

def FrobeniusMonoidalClosed (M : MonoidalCategory) (F : FrobeniusMonoidal M) : Prop :=
  F.frobenius

theorem frobenius_monoidal_closed_from_evidence (M : MonoidalCategory) (F : FrobeniusMonoidal M)
    (E : FrobeniusMonoidalEvidence M F) : FrobeniusMonoidalClosed M F := by
  exact E.frobeniusClosed

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse