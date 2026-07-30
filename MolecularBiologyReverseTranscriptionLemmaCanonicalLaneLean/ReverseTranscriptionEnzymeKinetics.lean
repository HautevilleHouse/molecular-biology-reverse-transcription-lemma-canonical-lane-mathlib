import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean

structure EnzymeKineticsPackage where
  rnaTemplatePresent : Prop
  dNTPSubstrateConcentration : Prop
  reverseTranscriptaseEnzymeActive : Prop
  dnaProductSynthesized : Prop

structure EnzymeKineticsEvidence (E : EnzymeKineticsPackage) where
  rnaTemplatePresentClosed : E.rnaTemplatePresent
  dNTPSubstrateConcentrationClosed : E.dNTPSubstrateConcentration
  reverseTranscriptaseEnzymeActiveClosed : E.reverseTranscriptaseEnzymeActive
  dnaProductSynthesizedClosed : E.dnaProductSynthesized

def EnzymeKineticsClosed (E : EnzymeKineticsPackage) : Prop :=
  E.rnaTemplatePresent ∧ E.dNTPSubstrateConcentration ∧
  E.reverseTranscriptaseEnzymeActive ∧ E.dnaProductSynthesized

theorem enzyme_kinetics_closed_from_evidence (E : EnzymeKineticsPackage) (Ev : EnzymeKineticsEvidence E) : EnzymeKineticsClosed E := by
  exact And.intro Ev.rnaTemplatePresentClosed
    (And.intro Ev.dNTPSubstrateConcentrationClosed
      (And.intro Ev.reverseTranscriptaseEnzymeActiveClosed Ev.dnaProductSynthesizedClosed))

end MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean
end HautevilleHouse