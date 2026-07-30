import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean

structure ExtensionFidelityPackage where
  polymeraseProcessivityHigh : Prop
  nucleotideIncorporationAccurate : Prop
  errorRateLow : Prop
  fullLengthCdsProduced : Prop

structure ExtensionFidelityEvidence (E : ExtensionFidelityPackage) where
  polymeraseProcessivityHighClosed : E.polymeraseProcessivityHigh
  nucleotideIncorporationAccurateClosed : E.nucleotideIncorporationAccurate
  errorRateLowClosed : E.errorRateLow
  fullLengthCdsProducedClosed : E.fullLengthCdsProduced

def ExtensionFidelityClosed (E : ExtensionFidelityPackage) : Prop :=
  E.polymeraseProcessivityHigh ∧ E.nucleotideIncorporationAccurate ∧
  E.errorRateLow ∧ E.fullLengthCdsProduced

theorem extension_fidelity_closed_from_evidence (E : ExtensionFidelityPackage) (Ev : ExtensionFidelityEvidence E) : ExtensionFidelityClosed E := by
  exact And.intro Ev.polymeraseProcessivityHighClosed
    (And.intro Ev.nucleotideIncorporationAccurateClosed
      (And.intro Ev.errorRateLowClosed Ev.fullLengthCdsProducedClosed))

end MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean
end HautevilleHouse