import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean

structure ReverseTranscriptasePackage where
  rnaTemplate : String
  primerBinding : Prop
  rnaDependentDNAPolymerase : Prop
  rnaseHActivity : Prop
  processivity : Pos

structure ReverseTranscriptaseEvidence (R : ReverseTranscriptasePackage) where
  primerBindingClosed : R.primerBinding
  rnaDependentDNAPolymeraseClosed : R.rnaDependentDNAPolymerase
  rnaseHActivityClosed : R.rnaseHActivity
  processivityClosed : R.processivity

def ReverseTranscriptaseClosed (R : ReverseTranscriptasePackage) : Prop :=
  R.primerBinding ∧ R.rnaDependentDNAPolymerase ∧ R.rnaseHActivity ∧ R.processivity

theorem reverse_transcriptase_closed_from_evidence {R : ReverseTranscriptasePackage}
    (E : ReverseTranscriptaseEvidence R) : ReverseTranscriptaseClosed R := by
  exact And.intro E.primerBindingClosed
    (And.intro E.rnaDependentDNAPolymeraseClosed
      (And.intro E.rnaseHActivityClosed E.processivityClosed))

end MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean
end HautevilleHouse