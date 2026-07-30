import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean

structure TerminationPackage where
  terminationSignalEncountered : Prop
  rnaDegradationComplete : Prop
  dnaStrandDisplaced : Prop
  doubleStrandedDnaFormed : Prop

structure TerminationEvidence (T : TerminationPackage) where
  terminationSignalEncounteredClosed : T.terminationSignalEncountered
  rnaDegradationCompleteClosed : T.rnaDegradationComplete
  dnaStrandDisplacedClosed : T.dnaStrandDisplaced
  doubleStrandedDnaFormedClosed : T.doubleStrandedDnaFormed

def TerminationClosed (T : TerminationPackage) : Prop :=
  T.terminationSignalEncountered ∧ T.rnaDegradationComplete ∧
  T.dnaStrandDisplaced ∧ T.doubleStrandedDnaFormed

theorem termination_closed_from_evidence (T : TerminationPackage) (Ev : TerminationEvidence T) : TerminationClosed T := by
  exact And.intro Ev.terminationSignalEncounteredClosed
    (And.intro Ev.rnaDegradationCompleteClosed
      (And.intro Ev.dnaStrandDisplacedClosed Ev.doubleStrandedDnaFormedClosed))

end MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean
end HautevilleHouse