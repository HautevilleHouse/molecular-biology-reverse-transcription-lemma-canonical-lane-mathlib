import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean.cDNAFirstStrandSynthesis

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean

structure ReverseTranscriptionProductPackage {R : ReverseTranscriptasePackage}
    {C : cDNAFirstStrandSynthesisPackage R} where
  doubleStrandedDNA : Prop
  integrationCompetence : Prop
  sequenceFidelity : Prop
  lengthDistribution : Prop

structure ReverseTranscriptionProductEvidence {R : ReverseTranscriptasePackage}
    {C : cDNAFirstStrandSynthesisPackage R}
    (P : ReverseTranscriptionProductPackage R C) where
  doubleStrandedDNAClosed : P.doubleStrandedDNA
  integrationCompetenceClosed : P.integrationCompetence
  sequenceFidelityClosed : P.sequenceFidelity

def ReverseTranscriptionProductClosed {R : ReverseTranscriptasePackage}
    {C : cDNAFirstStrandSynthesisPackage R}
    (P : ReverseTranscriptionProductPackage R C) : Prop :=
  P.doubleStrandedDNA ∧ P.integrationCompetence ∧ P.sequenceFidelity

theorem reverse_transcription_product_closed_from_evidence
    {R : ReverseTranscriptasePackage} {C : cDNAFirstStrandSynthesisPackage R}
    {P : ReverseTranscriptionProductPackage R C}
    (E : ReverseTranscriptionProductEvidence P) : ReverseTranscriptionProductClosed P := by
  exact And.intro E.doubleStrandedDNAClosed
    (And.intro E.integrationCompetenceClosed E.sequenceFidelityClosed)

end MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean
end HautevilleHouse