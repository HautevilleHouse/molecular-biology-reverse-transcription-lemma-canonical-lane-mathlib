import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean

structure RTEndpoint (A : AdmissibleClass) where
  synthesisComplete : Prop
  integrationFidelityAchieved : Prop
  mutationLoadBound : Prop
  evidenceSynthesisComplete : synthesisComplete
  evidenceIntegrationFidelityAchieved : integrationFidelityAchieved
  evidenceMutationLoadBound : mutationLoadBound

def ReverseTranscriptionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem reverse_transcription_endgame (A : AdmissibleClass) : ReverseTranscriptionClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean
end HautevilleHouse