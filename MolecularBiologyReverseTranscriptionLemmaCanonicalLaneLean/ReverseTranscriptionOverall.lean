import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean.ReverseTranscriptionEnzyme
import HautevilleHouse.MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean.RNATemplatePriming
import HautevilleHouse.MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean.ViralRNAdimerization
import HautevilleHouse.MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean.StrandTransfer
import HautevilleHouse.MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean.Integration

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean

structure ReverseTranscriptionOverallPackage (E : ReverseTranscriptionEnzymePackage)
    (R : RNATemplatePrimingPackage) (V : ViralRNAdimerizationPackage)
    (S : StrandTransferPackage) (I : IntegrationPackage) where
  enzymeClosed : ReverseTranscriptionEnzymeClosed E
  primingClosed : RNATemplatePrimingClosed R
  dimerizationClosed : ViralRNAdimerizationClosed V
  strandTransferClosed : StrandTransferClosed S
  integrationClosed : IntegrationClosed I
  overallLemma : Prop

structure ReverseTranscriptionOverallEvidence {E : ReverseTranscriptionEnzymePackage}
    {R : RNATemplatePrimingPackage} {V : ViralRNAdimerizationPackage}
    {S : StrandTransferPackage} {I : IntegrationPackage}
    (P : ReverseTranscriptionOverallPackage E R V S I) where
  overallLemmaClosed : P.overallLemma

def ReverseTranscriptionOverallClosed {E : ReverseTranscriptionEnzymePackage}
    {R : RNATemplatePrimingPackage} {V : ViralRNAdimerizationPackage}
    {S : StrandTransferPackage} {I : IntegrationPackage}
    (P : ReverseTranscriptionOverallPackage E R V S I) : Prop :=
  P.overallLemma

theorem reverse_transcription_overall_closed_from_evidence
    {E : ReverseTranscriptionEnzymePackage} {R : RNATemplatePrimingPackage}
    {V : ViralRNAdimerizationPackage} {S : StrandTransferPackage}
    {I : IntegrationPackage} (P : ReverseTranscriptionOverallPackage E R V S I)
    (Ev : ReverseTranscriptionOverallEvidence P) :
    ReverseTranscriptionOverallClosed P := by
  exact Ev.overallLemmaClosed

end MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean
end HautevilleHouse
