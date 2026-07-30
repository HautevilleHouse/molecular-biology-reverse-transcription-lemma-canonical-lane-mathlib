import MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean.AdmissibleClass

/-!
# Reverse Transcription Model Package
-/

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean

structure ReverseTranscriptionModel where
  templateRNA : Type u
  primerBindingSite : templateRNA -> Prop
  reverseTranscriptaseEnzyme : Type v
  nucleotidePool : Nat
  processivity : Prop
  errorCorrection : Prop

structure ReverseTranscriptionProcess (M : ReverseTranscriptionModel) where
  initiation : M.primerBindingSite M.templateRNA
  elongation : M.processivity
  termination : Prop
  fidelity : M.errorCorrection

structure ReverseTranscriptionEvidence (M : ReverseTranscriptionModel)
    (P : ReverseTranscriptionProcess M) where
  initiationClosed : P.initiation
  elongationClosed : P.elongation
  terminationClosed : P.termination
  fidelityClosed : P.fidelity

def ReverseTranscriptionClosed (M : ReverseTranscriptionModel)
    (P : ReverseTranscriptionProcess M) : Prop :=
  P.initiation ∧ P.elongation ∧ P.termination ∧ P.fidelity

theorem reverse_transcription_closed_from_evidence
    (M : ReverseTranscriptionModel) (P : ReverseTranscriptionProcess M)
    (E : ReverseTranscriptionEvidence M P) : ReverseTranscriptionClosed M P := by
  exact And.intro E.initiationClosed
    (And.intro E.elongationClosed
      (And.intro E.terminationClosed E.fidelityClosed))

end MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean
end HautevilleHouse