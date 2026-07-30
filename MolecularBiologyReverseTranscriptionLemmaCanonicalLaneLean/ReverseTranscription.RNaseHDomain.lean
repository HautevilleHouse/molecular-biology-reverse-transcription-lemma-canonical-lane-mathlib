import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean

structure RNaseHStructure where
  catalyticCenter : Prop
  metalIonBinding : Prop
  substrateRecognition : Prop

structure RNaseHDomainPackage (R : RNaseHStructure) where
  rnaDnaHybridCleavage : Prop
  cleavageSpecificity : Prop
  productRelease : Prop

structure RNaseHDomainEvidence {R : RNaseHStructure} (P : RNaseHDomainPackage R) where
  rnaDnaHybridCleavageClosed : P.rnaDnaHybridCleavage
  cleavageSpecificityClosed : P.cleavageSpecificity
  productReleaseClosed : P.productRelease

def RNaseHDomainClosed {R : RNaseHStructure} (P : RNaseHDomainPackage R) : Prop :=
  P.rnaDnaHybridCleavage ∧ P.cleavageSpecificity ∧ P.productRelease

theorem rnaseH_domain_closed_from_evidence {R : RNaseHStructure}
  (P : RNaseHDomainPackage R) (Ev : RNaseHDomainEvidence P) : RNaseHDomainClosed P :=
  And.intro Ev.rnaDnaHybridCleavageClosed
    (And.intro Ev.cleavageSpecificityClosed Ev.productReleaseClosed)

end MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean
end HautevilleHouse