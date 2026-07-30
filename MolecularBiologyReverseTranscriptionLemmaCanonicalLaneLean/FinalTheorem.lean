import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean.ReverseTranscriptionBridge
import MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean.RNaseHProcessing
import MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean.IntegrationStep

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : IntegraseComplex
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  IntegrationClosed (A.object)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedReverseTranscriptionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_reverse_transcription_endgame (A : AdmissibleClass) : ConstrainedReverseTranscriptionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean
end HautevilleHouse