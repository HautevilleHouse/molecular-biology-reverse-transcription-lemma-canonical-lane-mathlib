import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean

structure HostFactorInteractionPackage where
  nucleocapsidProteinBinding : Prop
  integraseInteraction : Prop
  reverseTranscriptaseProcessivityFactor : Prop
  cellularFactorDependency : Prop

structure HostFactorInteractionEvidence (H : HostFactorInteractionPackage) where
  nucleocapsidProteinBindingClosed : H.nucleocapsidProteinBinding
  integraseInteractionClosed : H.integraseInteraction
  reverseTranscriptaseProcessivityFactorClosed : H.reverseTranscriptaseProcessivityFactor
  cellularFactorDependencyClosed : H.cellularFactorDependency

def HostFactorInteractionClosed (H : HostFactorInteractionPackage) : Prop :=
  H.nucleocapsidProteinBinding ∧ H.integraseInteraction ∧
  H.reverseTranscriptaseProcessivityFactor ∧ H.cellularFactorDependency

theorem host_factor_interaction_closed_from_evidence
    (H : HostFactorInteractionPackage) (E : HostFactorInteractionEvidence H) :
    HostFactorInteractionClosed H := by
  exact And.intro E.nucleocapsidProteinBindingClosed
    (And.intro E.integraseInteractionClosed
      (And.intro E.reverseTranscriptaseProcessivityFactorClosed
        E.cellularFactorDependencyClosed))

end MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean
end HautevilleHouse