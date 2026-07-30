import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean

structure PrimerBindingPackage where
  primerSequenceComplementary : Prop
  annealingTemperatureOptimal : Prop
  bindingAffinitySufficient : Prop
  elongationInitiated : Prop

structure PrimerBindingEvidence (P : PrimerBindingPackage) where
  primerSequenceComplementaryClosed : P.primerSequenceComplementary
  annealingTemperatureOptimalClosed : P.annealingTemperatureOptimal
  bindingAffinitySufficientClosed : P.bindingAffinitySufficient
  elongationInitiatedClosed : P.elongationInitiated

def PrimerBindingClosed (P : PrimerBindingPackage) : Prop :=
  P.primerSequenceComplementary ∧ P.annealingTemperatureOptimal ∧
  P.bindingAffinitySufficient ∧ P.elongationInitiated

theorem primer_binding_closed_from_evidence (P : PrimerBindingPackage) (Ev : PrimerBindingEvidence P) : PrimerBindingClosed P := by
  exact And.intro Ev.primerSequenceComplementaryClosed
    (And.intro Ev.annealingTemperatureOptimalClosed
      (And.intro Ev.bindingAffinitySufficientClosed Ev.elongationInitiatedClosed))

end MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean
end HautevilleHouse