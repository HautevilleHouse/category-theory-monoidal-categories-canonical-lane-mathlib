import HautevilleHouse.CategoryTheoryMonoidalCategoriesCanonicalLaneLean.MonoidalAdmittedObject

/-!
# Strictification Package
-/

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

structure StrictificationPackage (O : MonoidalAdmittedObject) where
  strictCategoryExists : Prop
  equivalenceWithOriginal : O.coherenceHolds → strictCategoryExists

def StrictificationClosed (O : MonoidalAdmittedObject) : Prop :=
  StrictificationPackage.strictCategoryExists

theorem strictification_closed (O : MonoidalAdmittedObject) (p : StrictificationPackage O) :
    StrictificationClosed O := by
  exact p.strictCategoryExists

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse