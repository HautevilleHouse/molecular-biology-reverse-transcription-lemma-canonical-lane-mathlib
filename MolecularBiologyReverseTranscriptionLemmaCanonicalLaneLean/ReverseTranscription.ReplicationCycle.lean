import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean

structure RetroviralGenome where
  rnaContent : Prop
  encapsidationSignal : Prop

structure ReplicationCyclePackage (G : RetroviralGenome) where
  entryUncoating : Prop
  reverseTranscriptionStep : Prop
  nuclearImport : Prop
  integrationStep : Prop
  transcriptionTranslation : Prop
  assemblyBudding : Prop
  maturation : Prop

structure ReplicationCycleEvidence {G : RetroviralGenome} (C : ReplicationCyclePackage G) where
  entryUncoatingClosed : C.entryUncoating
  reverseTranscriptionStepClosed : C.reverseTranscriptionStep
  nuclearImportClosed : C.nuclearImport
  integrationStepClosed : C.integrationStep
  transcriptionTranslationClosed : C.transcriptionTranslation
  assemblyBuddingClosed : C.assemblyBudding
  maturationClosed : C.maturation

def ReplicationCycleClosed {G : RetroviralGenome} (C : ReplicationCyclePackage G) : Prop :=
  C.entryUncoating ∧ C.reverseTranscriptionStep ∧ C.nuclearImport ∧
  C.integrationStep ∧ C.transcriptionTranslation ∧ C.assemblyBudding ∧ C.maturation

theorem replication_cycle_closed_from_evidence {G : RetroviralGenome}
  (C : ReplicationCyclePackage G) (Ev : ReplicationCycleEvidence C) : ReplicationCycleClosed C :=
  And.intro Ev.entryUncoatingClosed
    (And.intro Ev.reverseTranscriptionStepClosed
      (And.intro Ev.nuclearImportClosed
        (And.intro Ev.integrationStepClosed
          (And.intro Ev.transcriptionTranslationClosed
            (And.intro Ev.assemblyBuddingClosed Ev.maturationClosed)))))

end MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean
end HautevilleHouse