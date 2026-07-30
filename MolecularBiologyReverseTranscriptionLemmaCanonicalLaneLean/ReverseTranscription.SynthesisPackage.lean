import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean

structure PrimitiveRNA where
  sequence : List Char
  structure : Prop

structure ReverseTranscriptaseEnzyme where
  activeSite : Prop
  processivity : Prop
  errorRate : Prop

structure SynthesisPackage (P : PrimitiveRNA) (E : ReverseTranscriptaseEnzyme) where
  rnaTemplate : P
  enzyme : E
  dnaPrimer : List Char
  elongationRate : Nat
  processivityCheck : Prop
  terminationCondition : Prop

structure SynthesisEvidence {P : PrimitiveRNA} {E : ReverseTranscriptaseEnzyme}
  (S : SynthesisPackage P E) where
  rnaTemplateBound : S.rnaTemplate = S.rnaTemplate
  primerBound : S.dnaPrimer.length > 0
  processivityCheckClosed : S.processivityCheck
  terminationConditionClosed : S.terminationCondition

def SynthesisClosed {P : PrimitiveRNA} {E : ReverseTranscriptaseEnzyme}
  (S : SynthesisPackage P E) : Prop :=
  S.processivityCheck ∧ S.terminationCondition

theorem synthesis_closed_from_evidence {P : PrimitiveRNA} {E : ReverseTranscriptaseEnzyme}
  (S : SynthesisPackage P E) (Ev : SynthesisEvidence S) : SynthesisClosed S :=
  And.intro Ev.processivityCheckClosed Ev.terminationConditionClosed

end MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean
end HautevilleHouse