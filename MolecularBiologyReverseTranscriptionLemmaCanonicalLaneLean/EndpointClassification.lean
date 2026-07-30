import MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean.FidelityCheckpointPackage

/-!
# Endpoint Classification Package
-/

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean

structure EndpointClassificationPackage {E : ErrorRatePackage}
    {F : FidelityCheckpointPackage E} where
  targetViralRNA : Type u
  targetSequence : targetViralRNA -> String
  proviralDNA : Type v
  integrationSite : String
  reverseTranscriptionCompleteInNucleus : Prop
  endpointMatchesViralLifecycleStatement : Prop

structure EndpointClassificationEvidence {E : ErrorRatePackage}
    {F : FidelityCheckpointPackage E}
    (Epkg2 : EndpointClassificationPackage F) where
  reverseTranscriptionCompleteInNucleusClosed : Epkg2.reverseTranscriptionCompleteInNucleus
  endpointMatchesViralLifecycleStatementClosed : Epkg2.endpointMatchesViralLifecycleStatement

def EndpointClassificationClosed {E : ErrorRatePackage}
    {F : FidelityCheckpointPackage E}
    (Epkg2 : EndpointClassificationPackage F) : Prop :=
  Epkg2.reverseTranscriptionCompleteInNucleus ∧
  Epkg2.endpointMatchesViralLifecycleStatement

theorem endpoint_classification_closed_from_evidence
    {E : ErrorRatePackage} {F : FidelityCheckpointPackage E}
    (Epkg2 : EndpointClassificationPackage F) (E2 : EndpointClassificationEvidence Epkg2) :
    EndpointClassificationClosed Epkg2 := by
  exact And.intro E2.reverseTranscriptionCompleteInNucleusClosed
    E2.endpointMatchesViralLifecycleStatementClosed

theorem endpoint_classification_supplies_viral_sequence
    {E : ErrorRatePackage} {F : FidelityCheckpointPackage E}
    (Epkg2 : EndpointClassificationPackage F) :
    Epkg2.targetSequence Epkg2.targetViralRNA = "Complementary DNA synthesized from viral RNA template" :=
  rfl

end MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean
end HautevilleHouse