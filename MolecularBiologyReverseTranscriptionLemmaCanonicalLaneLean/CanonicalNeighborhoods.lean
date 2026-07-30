import MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean.RNAPolymeraseBinding

/-!
# Canonical Neighborhoods Package
-/

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean

structure CanonicalNeighborhoodsPackage {R : RNASecondaryStructurePackage}
    {T : RNATemplateBindingPackage R} (U : RNAPolymeraseBindingPackage T) where
  proximityToPrimerBindingSite : Prop
  secondaryStructureAccessibility : Prop
  distanceFromGCrichRegion : Prop
  persistenceUnderReverseTranscription : Prop

structure CanonicalNeighborhoodsEvidence {R : RNASecondaryStructurePackage}
    {T : RNATemplateBindingPackage R} {U : RNAPolymeraseBindingPackage T}
    (C : CanonicalNeighborhoodsPackage U) where
  proximityToPrimerBindingSiteClosed : C.proximityToPrimerBindingSite
  secondaryStructureAccessibilityClosed : C.secondaryStructureAccessibility
  distanceFromGCrichRegionClosed : C.distanceFromGCrichRegion
  persistenceUnderReverseTranscriptionClosed : C.persistenceUnderReverseTranscription

def CanonicalNeighborhoodsClosed {R : RNASecondaryStructurePackage}
    {T : RNATemplateBindingPackage R} {U : RNAPolymeraseBindingPackage T}
    (C : CanonicalNeighborhoodsPackage U) : Prop :=
  C.proximityToPrimerBindingSite ∧ C.secondaryStructureAccessibility ∧
  C.distanceFromGCrichRegion ∧ C.persistenceUnderReverseTranscription

theorem canonical_neighborhoods_closed_from_evidence
    {R : RNASecondaryStructurePackage} {T : RNATemplateBindingPackage R}
    {U : RNAPolymeraseBindingPackage T} (C : CanonicalNeighborhoodsPackage U)
    (E : CanonicalNeighborhoodsEvidence C) : CanonicalNeighborhoodsClosed C := by
  exact And.intro E.proximityToPrimerBindingSiteClosed
    (And.intro E.secondaryStructureAccessibilityClosed
      (And.intro E.distanceFromGCrichRegionClosed E.persistenceUnderReverseTranscriptionClosed))

end MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean
end HautevilleHouse