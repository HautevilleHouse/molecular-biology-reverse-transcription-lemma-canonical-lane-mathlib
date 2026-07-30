import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean

structure RNATemplateBindingPackage where
  rnaSecondaryStructure : Prop
  primerComplementaryRegion : String
  templateSwitchCapability : Prop
  annealingEfficiency : Prop

structure RNATemplateBindingEvidence (R : RNATemplateBindingPackage) where
  rnaSecondaryStructureClosed : R.rnaSecondaryStructure
  templateSwitchCapabilityClosed : R.templateSwitchCapability
  annealingEfficiencyClosed : R.annealingEfficiency

def RNATemplateBindingClosed (R : RNATemplateBindingPackage) : Prop :=
  R.rnaSecondaryStructure ∧ R.templateSwitchCapability ∧ R.annealingEfficiency

theorem rna_template_binding_closed_from_evidence {R : RNATemplateBindingPackage}
    (E : RNATemplateBindingEvidence R) : RNATemplateBindingClosed R := by
  exact And.intro E.rnaSecondaryStructureClosed
    (And.intro E.templateSwitchCapabilityClosed E.annealingEfficiencyClosed)

end MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean
end HautevilleHouse