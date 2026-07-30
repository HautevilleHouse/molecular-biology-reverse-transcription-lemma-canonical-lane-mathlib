import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean

structure ReverseTranscriptionEnzymePackage where
  enzymeType : Type u
  bindingAffinity : Prop
  polymeraseActivity : Prop
  rnaseHActivity : Prop
  specificity : Prop
  processivity : Prop

structure ReverseTranscriptionEnzymeEvidence (E : ReverseTranscriptionEnzymePackage) where
  bindingAffinityClosed : E.bindingAffinity
  polymeraseActivityClosed : E.polymeraseActivity
  rnaseHActivityClosed : E.rnaseHActivity
  specificityClosed : E.specificity
  processivityClosed : E.processivity

def ReverseTranscriptionEnzymeClosed (E : ReverseTranscriptionEnzymePackage) : Prop :=
  E.bindingAffinity ∧ E.polymeraseActivity ∧ E.rnaseHActivity ∧ E.specificity ∧ E.processivity

theorem reverse_transcription_enzyme_closed_from_evidence
    (E : ReverseTranscriptionEnzymePackage) (Ev : ReverseTranscriptionEnzymeEvidence E) :
    ReverseTranscriptionEnzymeClosed E := by
  exact And.intro Ev.bindingAffinityClosed
    (And.intro Ev.polymeraseActivityClosed
      (And.intro Ev.rnaseHActivityClosed
        (And.intro Ev.specificityClosed Ev.processivityClosed)))

end MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean
end HautevilleHouse
