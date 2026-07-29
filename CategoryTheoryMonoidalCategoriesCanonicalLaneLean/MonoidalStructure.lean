import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

structure MonoidalStructure (C : Type) [Category C] where
  tensorObj : C -> C -> C
  unitObj : C
  associator : forall X Y Z : C, (tensorObj (tensorObj X Y) Z) ≅ (tensorObj X (tensorObj Y Z))
  leftUnitor : forall X : C, (tensorObj unitObj X) ≅ X
  rightUnitor : forall X : C, (tensorObj X unitObj) ≅ X
  pentagonIdentity : forall W X Y Z : C, ...
  triangleIdentity : forall X Y : C, ...
  pentagonIdentityTerm : pentagonIdentity
  triangleIdentityTerm : triangleIdentity

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse