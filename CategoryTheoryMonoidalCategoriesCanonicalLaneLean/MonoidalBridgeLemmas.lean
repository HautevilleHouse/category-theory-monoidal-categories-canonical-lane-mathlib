import MonoidalAdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.symmetricMonoidal ∨ A.object.braidedMonoidal

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse