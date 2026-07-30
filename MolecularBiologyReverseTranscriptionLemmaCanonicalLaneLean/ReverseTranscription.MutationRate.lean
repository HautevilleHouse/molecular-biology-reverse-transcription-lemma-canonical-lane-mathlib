import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean

structure PolymeraseFidelity where
  basePairingCheck : Prop
  proofreadingAbsent : Prop
  errorRate : Nat

structure MutationRatePackage (F : PolymeraseFidelity) where
  substitutionRate : Prop
  insertionRate : Prop
  deletionRate : Prop
  recombinationRate : Prop

structure MutationRateEvidence {F : PolymeraseFidelity} (M : MutationRatePackage F) where
  substitutionRateClosed : M.substitutionRate
  insertionRateClosed : M.insertionRate
  deletionRateClosed : M.deletionRate
  recombinationRateClosed : M.recombinationRate

def MutationRateClosed {F : PolymeraseFidelity} (M : MutationRatePackage F) : Prop :=
  M.substitutionRate ∧ M.insertionRate ∧ M.deletionRate ∧ M.recombinationRate

theorem mutation_rate_closed_from_evidence {F : PolymeraseFidelity}
  (M : MutationRatePackage F) (Ev : MutationRateEvidence M) : MutationRateClosed M :=
  And.intro Ev.substitutionRateClosed
    (And.intro Ev.insertionRateClosed
      (And.intro Ev.deletionRateClosed Ev.recombinationRateClosed))

end MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean
end HautevilleHouse