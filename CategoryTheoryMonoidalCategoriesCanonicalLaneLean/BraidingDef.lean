import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryMonoidalCategoriesCanonicalLaneLean.MonoidalCategoryDef

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

structure BraidedMonoidalData (M : MonoidalCategoryData) where
  braiding : (X Y : M.Obj) → M.Hom (M.tensorProduct X Y) (M.tensorProduct Y X)
  braidingNatural : Prop
  hexagonIdentity : Prop
  symmetryCondition : Prop

structure BraidedMonoidalEvidence {M : MonoidalCategoryData} (B : BraidedMonoidalData M) where
  braidingNaturalClosed : B.braidingNatural
  hexagonIdentityClosed : B.hexagonIdentity
  symmetryConditionClosed : B.symmetryCondition

def BraidedMonoidalClosed {M : MonoidalCategoryData} (B : BraidedMonoidalData M) : Prop :=
  B.braidingNatural ∧ B.hexagonIdentity ∧ B.symmetryCondition

theorem braided_monoidal_closed_from_evidence {M : MonoidalCategoryData} (B : BraidedMonoidalData M) (E : BraidedMonoidalEvidence B) : BraidedMonoidalClosed B := by
  exact And.intro E.braidingNaturalClosed
    (And.intro E.hexagonIdentityClosed E.symmetryConditionClosed)

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse