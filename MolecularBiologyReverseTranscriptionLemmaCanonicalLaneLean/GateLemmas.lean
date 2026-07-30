import HautevilleHouse.MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean
end HautevilleHouse