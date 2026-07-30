import HautevilleHouse.MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean.Basic

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean

structure ReverseTranscriptionSpace where
  carrier : Type
  rnaMolecule : carrier
  reverseTranscriptase : carrier -> carrier
  cdnaProduct : Type

def reverseTranscriptionProcess (x : ReverseTranscriptionSpace) : Prop :=
  True

structure ReverseTranscriptionAdmittedObject where
  space : ReverseTranscriptionSpace
  primerBinding : Prop
  elongationComplete : Prop
  rnaDegradation : Prop
  conclusion : primerBinding ∧ elongationComplete ∧ rnaDegradation

def ReverseTranscriptionWitnessClosed (O : ReverseTranscriptionAdmittedObject) : Prop :=
  O.primerBinding ∧ O.elongationComplete ∧ O.rnaDegradation

end MolecularBiologyReverseTranscriptionLemmaCanonicalLaneLean
end HautevilleHouse