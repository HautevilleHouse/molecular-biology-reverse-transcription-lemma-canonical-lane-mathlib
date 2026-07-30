import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean.ReverseTranscriptasePackage

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean

structure cDNAFirstStrandSynthesisPackage {R : ReverseTranscriptasePackage} where
  primerExtension : Prop
  rnaDegradation : R.rnaseHActivity → Prop
  firstStrandCompletion : Prop
  yieldEfficiency : Prop

structure cDNAFirstStrandSynthesisEvidence {R : ReverseTranscriptasePackage}
    (C : cDNAFirstStrandSynthesisPackage R) where
  primerExtensionClosed : C.primerExtension
  rnaDegradationClosed : C.rnaDegradation
  firstStrandCompletionClosed : C.firstStrandCompletion
  yieldEfficiencyClosed : C.yieldEfficiency

def cDNAFirstStrandSynthesisClosed {R : ReverseTranscriptasePackage}
    (C : cDNAFirstStrandSynthesisPackage R) : Prop :=
  C.primerExtension ∧ C.firstStrandCompletion ∧ C.yieldEfficiency

theorem cdna_first_strand_synthesis_closed_from_evidence
    {R : ReverseTranscriptasePackage} {C : cDNAFirstStrandSynthesisPackage R}
    (E : cDNAFirstStrandSynthesisEvidence C) : cDNAFirstStrandSynthesisClosed C := by
  exact And.intro E.primerExtensionClosed
    (And.intro E.firstStrandCompletionClosed E.yieldEfficiencyClosed)

end MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean
end HautevilleHouse