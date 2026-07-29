import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

structure MonoidalAdmittedObject where
  category : Type u
  tensorProduct : category → category → category
  unitObject : category
  associator : ∀ (A B C : category), tensorProduct (tensorProduct A B) C ≅ tensorProduct A (tensorProduct B C)
  leftUnitor : ∀ (A : category), tensorProduct unitObject A ≅ A
  rightUnitor : ∀ (A : category), tensorProduct A unitObject ≅ A
  pentagonCondition : Prop
  triangleCondition : Prop
  conclusion : pentagonCondition ∧ triangleCondition

def MonoidalWitnessClosed (O : MonoidalAdmittedObject) : Prop :=
  O.pentagonCondition ∧ O.triangleCondition

theorem monoidal_witness_closed_conclusion (O : MonoidalAdmittedObject) :
    MonoidalWitnessClosed O := by
  exact O.conclusion

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse
