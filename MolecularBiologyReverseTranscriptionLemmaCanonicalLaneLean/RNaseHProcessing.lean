import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean

structure RNaseHDomain where
  rnaBindingGroove : Prop
  catalyticSiteMgCoordinated : Prop
  rnaCleavageActivity : Prop
  productReleaseChannel : Prop
  rnaBindingGrooveTerm : rnaBindingGroove
  catalyticSiteMgCoordinatedTerm : catalyticSiteMgCoordinated
  rnaCleavageActivityTerm : rnaCleavageActivity
  productReleaseChannelTerm : productReleaseChannel

structure RNaseHProcessingPackage where
  rnaseHDomain : RNaseHDomain
  hybridDuplexBound : Prop
  cleavageTargetIdentified : Prop
  rnaFragmentLengthControlled : Prop
  recurrentCleavageCycles : Prop
  hybridDuplexBoundTerm : hybridDuplexBound
  cleavageTargetIdentifiedTerm : cleavageTargetIdentified
  rnaFragmentLengthControlledTerm : rnaFragmentLengthControlled
  recurrentCleavageCyclesTerm : recurrentCleavageCycles

structure RNaseHEvidence (R : RNaseHProcessingPackage) where
  domainClosed : R.rnaseHDomain.rnaBindingGroove ∧ R.rnaseHDomain.catalyticSiteMgCoordinated ∧ R.rnaseHDomain.rnaCleavageActivity ∧ R.rnaseHDomain.productReleaseChannel
  processingClosed : R.hybridDuplexBound ∧ R.cleavageTargetIdentified ∧ R.rnaFragmentLengthControlled ∧ R.recurrentCleavageCycles

def RNaseHProcessingClosed (R : RNaseHProcessingPackage) : Prop :=
  R.rnaseHDomain.rnaBindingGroove ∧ R.rnaseHDomain.catalyticSiteMgCoordinated ∧ R.rnaseHDomain.rnaCleavageActivity ∧ R.rnaseHDomain.productReleaseChannel ∧
  R.hybridDuplexBound ∧ R.cleavageTargetIdentified ∧ R.rnaFragmentLengthControlled ∧ R.recurrentCleavageCycles

theorem rnase_h_processing_closed_from_evidence
    (R : RNaseHProcessingPackage) (E : RNaseHEvidence R) : RNaseHProcessingClosed R := by
  have hD := E.domainClosed
  have hP := E.processingClosed
  exact And.intro hD.1 (And.intro hD.2 (And.intro hD.3 (And.intro hD.4 (And.intro hP.1 (And.intro hP.2 (And.intro hP.3 hP.4))))))

end MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean
end HautevilleHouse