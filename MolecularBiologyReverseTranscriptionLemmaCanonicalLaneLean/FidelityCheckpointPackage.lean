import MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean.ErrorRatePackage

/-!
# Fidelity Checkpoint Package
-/

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean

structure FidelityCheckpointPackage (E : ErrorRatePackage) where
  misincorporationRate : Prop
  RNaseHActivity : Prop
  strandTransferEvents : Prop
  checkpointProofreadingMechanism : Prop

structure FidelityCheckpointEvidence (E : ErrorRatePackage)
    (F : FidelityCheckpointPackage E) where
  misincorporationRateClosed : F.misincorporationRate
  RNaseHActivityClosed : F.RNaseHActivity
  strandTransferEventsClosed : F.strandTransferEvents
  checkpointProofreadingMechanismClosed : F.checkpointProofreadingMechanism

def FidelityCheckpointClosed (E : ErrorRatePackage)
    (F : FidelityCheckpointPackage E) : Prop :=
  F.misincorporationRate ∧ F.RNaseHActivity ∧
  F.strandTransferEvents ∧ F.checkpointProofreadingMechanism

theorem fidelity_checkpoint_closed_from_evidence
    (E : ErrorRatePackage) (F : FidelityCheckpointPackage E)
    (E2 : FidelityCheckpointEvidence F) : FidelityCheckpointClosed F := by
  exact And.intro E2.misincorporationRateClosed
    (And.intro E2.RNaseHActivityClosed
      (And.intro E2.strandTransferEventsClosed E2.checkpointProofreadingMechanismClosed))

end MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean
end HautevilleHouse