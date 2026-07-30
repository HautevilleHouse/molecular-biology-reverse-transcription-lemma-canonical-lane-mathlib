import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean

structure StrandTransferPackage where
  minusStrandTransfer : Prop
  plusStrandTransfer : Prop
  templateSwitching : Prop
  recombination : Prop
  fidelity : Prop

structure StrandTransferEvidence (S : StrandTransferPackage) where
  minusStrandTransferClosed : S.minusStrandTransfer
  plusStrandTransferClosed : S.plusStrandTransfer
  templateSwitchingClosed : S.templateSwitching
  recombinationClosed : S.recombination
  fidelityClosed : S.fidelity

def StrandTransferClosed (S : StrandTransferPackage) : Prop :=
  S.minusStrandTransfer ∧ S.plusStrandTransfer ∧ S.templateSwitching ∧ S.recombination ∧ S.fidelity

theorem strand_transfer_closed_from_evidence
    (S : StrandTransferPackage) (Ev : StrandTransferEvidence S) :
    StrandTransferClosed S := by
  exact And.intro Ev.minusStrandTransferClosed
    (And.intro Ev.plusStrandTransferClosed
      (And.intro Ev.templateSwitchingClosed
        (And.intro Ev.recombinationClosed Ev.fidelityClosed)))

end MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean
end HautevilleHouse
