import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean

structure RTTemplateComplex where
  templateStrand : Type u
  primerBindingSite : Prop
  reverseTranscriptaseBound : Prop
  polymerizationInitiated : Prop
  rnaseHActivity : Prop
  productStrandSynthesized : Prop
  primerBindingSiteTerm : primerBindingSite
  reverseTranscriptaseBoundTerm : reverseTranscriptaseBound
  polymerizationInitiatedTerm : polymerizationInitiated
  rnaseHActivityTerm : rnaseHActivity
  productStrandSynthesizedTerm : productStrandSynthesized

structure RTLifeCyclePackage where
  templateComplex : RTTemplateComplex
  dNTPPoolAvailable : Prop
  magnesiumIonConcentration : Prop
  processivityFactor : Prop
  rnaDegradationProductsCleared : Prop
  integrationStepReady : Prop
  dNTPPoolAvailableTerm : dNTPPoolAvailable
  magnesiumIonConcentrationTerm : magnesiumIonConcentration
  processivityFactorTerm : processivityFactor
  rnaDegradationProductsClearedTerm : rnaDegradationProductsCleared
  integrationStepReadyTerm : integrationStepReady

structure ReverseTranscriptionEvidence {T : RTTemplateComplex} (P : RTLifeCyclePackage T) where
  templateComplexClosed : T.primerBindingSite ∧ T.reverseTranscriptaseBound ∧ T.polymerizationInitiated ∧ T.rnaseHActivity ∧ T.productStrandSynthesized
  lifeCycleClosed : P.dNTPPoolAvailable ∧ P.magnesiumIonConcentration ∧ P.processivityFactor ∧ P.rnaDegradationProductsCleared ∧ P.integrationStepReady

def ReverseTranscriptionClosed {T : RTTemplateComplex} (P : RTLifeCyclePackage T) : Prop :=
  T.primerBindingSite ∧ T.reverseTranscriptaseBound ∧ T.polymerizationInitiated ∧ T.rnaseHActivity ∧ T.productStrandSynthesized ∧
  P.dNTPPoolAvailable ∧ P.magnesiumIonConcentration ∧ P.processivityFactor ∧ P.rnaDegradationProductsCleared ∧ P.integrationStepReady

theorem reverse_transcription_closed_from_evidence
    {T : RTTemplateComplex} (P : RTLifeCyclePackage T) (E : ReverseTranscriptionEvidence P) : ReverseTranscriptionClosed P := by
  have hT := E.templateComplexClosed
  have hL := E.lifeCycleClosed
  exact And.intro hT.1 (And.intro hT.2 (And.intro hT.3 (And.intro hT.4 (And.intro hT.5 (And.intro hL.1 (And.intro hL.2 (And.intro hL.3 (And.intro hL.4 hL.5))))))))

end MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean
end HautevilleHouse