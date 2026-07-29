import canonicalLaneMathlib.AdmissibleClass
import CategoryTheoryMonoidalCategoriesCanonicalLaneLean.MonoidalAdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.monoidalClosed

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.monoidalClosed

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse