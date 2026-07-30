import HautevilleHouse.MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ReverseTranscriptionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean
end HautevilleHouse