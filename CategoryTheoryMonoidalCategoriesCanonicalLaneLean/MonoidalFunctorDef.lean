import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryMonoidalCategoriesCanonicalLaneLean.MonoidalCategoryDef

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

structure MonoidalFunctorData (C D : MonoidalCategoryData) where
  objMap : C.Obj → D.Obj
  homMap : {X Y : C.Obj} → C.Hom X Y → D.Hom (objMap X) (objMap Y)
  tensorMap : (X Y : C.Obj) → D.Hom (D.tensorProduct (objMap X) (objMap Y)) (objMap (C.tensorProduct X Y))
  unitMap : D.Hom (D.unit) (objMap C.unit)
  tensorMapNatural : Prop
  unitMapNatural : Prop
  associativityCompatibility : Prop
  leftUnitorCompatibility : Prop
  rightUnitorCompatibility : Prop

structure MonoidalFunctorEvidence {C D : MonoidalCategoryData} (F : MonoidalFunctorData C D) where
  tensorMapNaturalClosed : F.tensorMapNatural
  unitMapNaturalClosed : F.unitMapNatural
  associativityCompatibilityClosed : F.associativityCompatibility
  leftUnitorCompatibilityClosed : F.leftUnitorCompatibility
  rightUnitorCompatibilityClosed : F.rightUnitorCompatibility

def MonoidalFunctorClosed {C D : MonoidalCategoryData} (F : MonoidalFunctorData C D) : Prop :=
  F.tensorMapNatural ∧ F.unitMapNatural ∧ F.associativityCompatibility ∧ F.leftUnitorCompatibility ∧ F.rightUnitorCompatibility

theorem monoidal_functor_closed_from_evidence {C D : MonoidalCategoryData} (F : MonoidalFunctorData C D) (E : MonoidalFunctorEvidence F) : MonoidalFunctorClosed F := by
  exact And.intro E.tensorMapNaturalClosed
    (And.intro E.unitMapNaturalClosed
      (And.intro E.associativityCompatibilityClosed
        (And.intro E.leftUnitorCompatibilityClosed E.rightUnitorCompatibilityClosed)))

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse