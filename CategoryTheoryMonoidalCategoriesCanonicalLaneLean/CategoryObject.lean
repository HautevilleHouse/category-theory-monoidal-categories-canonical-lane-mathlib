import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

structure MonoidalCategoryObject where
  obj : Type u
  tensorProduct : obj → obj → obj
  unitObject : obj
  associator : (X Y Z : obj) → tensorProduct (tensorProduct X Y) Z → tensorProduct X (tensorProduct Y Z)
  leftUnitor : (X : obj) → tensorProduct unitObject X → X
  rightUnitor : (X : obj) → tensorProduct X unitObject → X
  coherenceConditions : Prop

structure AdmittedMonoidalObject where
  category : MonoidalCategoryObject
  braidingDefined : Prop
  symmetryCondition : Prop
  conclusion : braidingDefined ∧ symmetryCondition

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse
