import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

structure CoherencePackage (M : MonoidalCategoryPackage) where
  macLaneCoherence : Prop
  strictificationExists : Prop
  strictification : Type u
  strictEquivalence : Prop

structure CoherenceEvidence {M : MonoidalCategoryPackage} (C : CoherencePackage M) where
  macLaneCoherenceClosed : C.macLaneCoherence
  strictificationExistsClosed : C.strictificationExists
  strictEquivalenceClosed : C.strictEquivalence

def CoherenceClosed {M : MonoidalCategoryPackage} (C : CoherencePackage M) : Prop :=
  C.macLaneCoherence ∧ C.strictificationExists ∧ C.strictEquivalence

theorem coherence_closed_from_evidence {M : MonoidalCategoryPackage} (C : CoherencePackage M) (E : CoherenceEvidence C) :
    CoherenceClosed C := by
  exact And.intro E.macLaneCoherenceClosed (And.intro E.strictificationExistsClosed E.strictEquivalenceClosed)

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse