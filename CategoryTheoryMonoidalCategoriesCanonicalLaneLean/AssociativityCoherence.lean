import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

structure AssociativityCoherencePackage where
  pentagonIdentities : Prop
  unitCoherence : Prop
  naturalIsomorphism : Prop

structure AssociativityCoherenceEvidence (C : AssociativityCoherencePackage) where
  pentagonIdentitiesClosed : C.pentagonIdentities
  unitCoherenceClosed : C.unitCoherence
  naturalIsomorphismClosed : C.naturalIsomorphism

def AssociativityCoherenceClosed (C : AssociativityCoherencePackage) : Prop :=
  C.pentagonIdentities ∧ C.unitCoherence ∧ C.naturalIsomorphism

theorem associativity_coherence_closed_from_evidence
    (C : AssociativityCoherencePackage) (E : AssociativityCoherenceEvidence C) :
    AssociativityCoherenceClosed C := by
  exact And.intro E.pentagonIdentitiesClosed
    (And.intro E.unitCoherenceClosed E.naturalIsomorphismClosed)

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse
