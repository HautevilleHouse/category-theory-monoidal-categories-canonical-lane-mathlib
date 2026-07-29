import canonicalLaneMathlib.AdmissibleClass
import CategoryTheoryMonoidalCategoriesCanonicalLaneLean.MonoidalCategoryStructure

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

open MonoidalCategoryData

structure MonoidalAdmittedObject where
  monoidalData : MonoidalCategoryData
  monoidalClosed : MonoidalCategoryClosed monoidalData

structure AdmissibleClass where
  object : MonoidalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.monoidalClosed ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse