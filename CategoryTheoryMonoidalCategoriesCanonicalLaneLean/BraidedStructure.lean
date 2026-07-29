import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

structure BraidedStructurePackage where
  braiding : Prop
  hexagonIdentities : Prop
  symmetry : Prop

structure BraidedStructureEvidence (B : BraidedStructurePackage) where
  braidingClosed : B.braiding
  hexagonIdentitiesClosed : B.hexagonIdentities
  symmetryClosed : B.symmetry

def BraidedStructureClosed (B : BraidedStructurePackage) : Prop :=
  B.braiding ∧ B.hexagonIdentities ∧ B.symmetry

theorem braided_structure_closed_from_evidence
    (B : BraidedStructurePackage) (E : BraidedStructureEvidence B) :
    BraidedStructureClosed B := by
  exact And.intro E.braidingClosed
    (And.intro E.hexagonIdentitiesClosed E.symmetryClosed)

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse
