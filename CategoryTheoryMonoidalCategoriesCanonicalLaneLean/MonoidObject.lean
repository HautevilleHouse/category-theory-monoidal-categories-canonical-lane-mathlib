import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

structure MonoidObjectPackage (M : MonoidalCategoryPackage) where
  underlyingObject : M.objectType
  multiplication : M.morphismType
  unit : M.morphismType
  associativity : Prop
  leftUnitality : Prop
  rightUnitality : Prop

structure MonoidObjectEvidence {M : MonoidalCategoryPackage} (N : MonoidObjectPackage M) where
  associativityClosed : N.associativity
  leftUnitalityClosed : N.leftUnitality
  rightUnitalityClosed : N.rightUnitality

def MonoidObjectClosed {M : MonoidalCategoryPackage} (N : MonoidObjectPackage M) : Prop :=
  N.associativity ∧ N.leftUnitality ∧ N.rightUnitality

theorem monoid_object_closed_from_evidence {M : MonoidalCategoryPackage} (N : MonoidObjectPackage M) (E : MonoidObjectEvidence N) :
    MonoidObjectClosed N := by
  exact And.intro E.associativityClosed (And.intro E.leftUnitalityClosed E.rightUnitalityClosed)

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse