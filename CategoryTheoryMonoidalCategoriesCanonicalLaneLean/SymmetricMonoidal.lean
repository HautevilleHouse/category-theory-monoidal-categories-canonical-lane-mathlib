import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

structure SymmetricMonoidalPackage (B : BraidedMonoidalPackage M) where
  involutionCondition : Prop

structure SymmetricMonoidalEvidence {M : MonoidalCategoryPackage} {B : BraidedMonoidalPackage M} (S : SymmetricMonoidalPackage B) where
  involutionConditionClosed : S.involutionCondition

def SymmetricMonoidalClosed {M : MonoidalCategoryPackage} {B : BraidedMonoidalPackage M} (S : SymmetricMonoidalPackage B) : Prop :=
  S.involutionCondition

theorem symmetric_monoidal_closed_from_evidence {M : MonoidalCategoryPackage} {B : BraidedMonoidalPackage M} (S : SymmetricMonoidalPackage B) (E : SymmetricMonoidalEvidence S) :
    SymmetricMonoidalClosed S := by
  exact E.involutionConditionClosed

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse