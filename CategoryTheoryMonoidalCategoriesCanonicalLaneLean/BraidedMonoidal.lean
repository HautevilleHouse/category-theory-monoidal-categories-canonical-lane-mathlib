import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

structure BraidedMonoidalPackage (M : MonoidalCategoryPackage) where
  braiding : (X Y : M.objectType) → M.morphismType
  hexagonCondition : Prop
  symmetryCondition : Prop

structure BraidedMonoidalEvidence {M : MonoidalCategoryPackage} (B : BraidedMonoidalPackage M) where
  hexagonConditionClosed : B.hexagonCondition
  symmetryConditionClosed : B.symmetryCondition

def BraidedMonoidalClosed {M : MonoidalCategoryPackage} (B : BraidedMonoidalPackage M) : Prop :=
  B.hexagonCondition ∧ B.symmetryCondition

theorem braided_monoidal_closed_from_evidence {M : MonoidalCategoryPackage} (B : BraidedMonoidalPackage M) (E : BraidedMonoidalEvidence B) :
    BraidedMonoidalClosed B := by
  exact And.intro E.hexagonConditionClosed E.symmetryConditionClosed

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse