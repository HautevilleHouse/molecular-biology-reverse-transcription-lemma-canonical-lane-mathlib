import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean

structure RNATemplatePrimingPackage where
  primerBinding : Prop
  templateSecondaryStructure : Prop
  primerDimers : Prop
  mispriming : Prop
  annealingEfficiency : Prop

structure RNATemplatePrimingEvidence (R : RNATemplatePrimingPackage) where
  primerBindingClosed : R.primerBinding
  templateSecondaryStructureClosed : R.templateSecondaryStructure
  primerDimersClosed : R.primerDimers
  misprimingClosed : R.mispriming
  annealingEfficiencyClosed : R.annealingEfficiency

def RNATemplatePrimingClosed (R : RNATemplatePrimingPackage) : Prop :=
  R.primerBinding ∧ R.templateSecondaryStructure ∧ R.primerDimers ∧ R.mispriming ∧ R.annealingEfficiency

theorem rna_template_priming_closed_from_evidence
    (R : RNATemplatePrimingPackage) (Ev : RNATemplatePrimingEvidence R) :
    RNATemplatePrimingClosed R := by
  exact And.intro Ev.primerBindingClosed
    (And.intro Ev.templateSecondaryStructureClosed
      (And.intro Ev.primerDimersClosed
        (And.intro Ev.misprimingClosed Ev.annealingEfficiencyClosed)))

end MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean
end HautevilleHouse
