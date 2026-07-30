import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean

structure IntegraseStructure where
  catalyticDomain : Prop
  dnaBinding : Prop
  strandTransfer : Prop

structure IntegrationKernelPackage (I : IntegraseStructure) where
  targetDNA : Prop
  proviralFormation : Prop
  chromatinAccess : Prop
  integrationFidelity : Prop

structure IntegrationKernelEvidence {I : IntegraseStructure} (K : IntegrationKernelPackage I) where
  targetDNAClosed : K.targetDNA
  proviralFormationClosed : K.proviralFormation
  chromatinAccessClosed : K.chromatinAccess
  integrationFidelityClosed : K.integrationFidelity

def IntegrationKernelClosed {I : IntegraseStructure} (K : IntegrationKernelPackage I) : Prop :=
  K.targetDNA ∧ K.proviralFormation ∧ K.chromatinAccess ∧ K.integrationFidelity

theorem integration_kernel_closed_from_evidence {I : IntegraseStructure}
  (K : IntegrationKernelPackage I) (Ev : IntegrationKernelEvidence K) : IntegrationKernelClosed K :=
  And.intro Ev.targetDNAClosed
    (And.intro Ev.proviralFormationClosed
      (And.intro Ev.chromatinAccessClosed Ev.integrationFidelityClosed))

end MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean
end HautevilleHouse