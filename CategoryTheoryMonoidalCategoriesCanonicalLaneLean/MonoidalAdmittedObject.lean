import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

structure MonoidalAdmittedObject where
  carrier : Type u
  tensor : carrier → carrier → carrier
  unit : carrier
  coherenceHolds : Prop
  conclusion : coherenceHolds

def MonoidalWitnessClosed (O : MonoidalAdmittedObject) : Prop :=
  O.coherenceHolds

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse