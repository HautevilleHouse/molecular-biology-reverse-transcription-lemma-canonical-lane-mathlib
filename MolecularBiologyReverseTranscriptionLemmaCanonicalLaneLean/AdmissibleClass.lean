import HautevilleHouse.MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : ReverseTranscriptionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ReverseTranscriptionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean
end HautevilleHouse