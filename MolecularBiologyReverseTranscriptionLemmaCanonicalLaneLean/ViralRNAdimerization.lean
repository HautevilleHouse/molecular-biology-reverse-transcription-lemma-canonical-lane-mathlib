import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean

structure ViralRNAdimerizationPackage where
  dimerInitiation : Prop
  dimerStabilization : Prop
  kissingLoopInteraction : Prop
  packagingSignal : Prop
  dimerizationCompetence : Prop

structure ViralRNAdimerizationEvidence (V : ViralRNAdimerizationPackage) where
  dimerInitiationClosed : V.dimerInitiation
  dimerStabilizationClosed : V.dimerStabilization
  kissingLoopInteractionClosed : V.kissingLoopInteraction
  packagingSignalClosed : V.packagingSignal
  dimerizationCompetenceClosed : V.dimerizationCompetence

def ViralRNAdimerizationClosed (V : ViralRNAdimerizationPackage) : Prop :=
  V.dimerInitiation ∧ V.dimerStabilization ∧ V.kissingLoopInteraction ∧ V.packagingSignal ∧ V.dimerizationCompetence

theorem viral_rna_dimerization_closed_from_evidence
    (V : ViralRNAdimerizationPackage) (Ev : ViralRNAdimerizationEvidence V) :
    ViralRNAdimerizationClosed V := by
  exact And.intro Ev.dimerInitiationClosed
    (And.intro Ev.dimerStabilizationClosed
      (And.intro Ev.kissingLoopInteractionClosed
        (And.intro Ev.packagingSignalClosed Ev.dimerizationCompetenceClosed)))

end MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean
end HautevilleHouse
