import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean

structure IntegrationPackage where
  integraseBinding : Prop
  strandTransfer : Prop
  targetCapture : Prop
  integrationFidelity : Prop
  repairLigation : Prop

structure IntegrationEvidence (I : IntegrationPackage) where
  integraseBindingClosed : I.integraseBinding
  strandTransferClosed : I.strandTransfer
  targetCaptureClosed : I.targetCapture
  integrationFidelityClosed : I.integrationFidelity
  repairLigationClosed : I.repairLigation

def IntegrationClosed (I : IntegrationPackage) : Prop :=
  I.integraseBinding ∧ I.strandTransfer ∧ I.targetCapture ∧ I.integrationFidelity ∧ I.repairLigation

theorem integration_closed_from_evidence
    (I : IntegrationPackage) (Ev : IntegrationEvidence I) :
    IntegrationClosed I := by
  exact And.intro Ev.integraseBindingClosed
    (And.intro Ev.strandTransferClosed
      (And.intro Ev.targetCaptureClosed
        (And.intro Ev.integrationFidelityClosed Ev.repairLigationClosed)))

end MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean
end HautevilleHouse
