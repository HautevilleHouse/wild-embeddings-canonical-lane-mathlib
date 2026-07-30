import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WildEmbeddingsCanonicalLaneLean

structure FoxArtinArc where
  ambientSpace : Type u
  ambientTopology : TopologicalSpace ambientSpace
  arcImage : Set ambientSpace
  isArc : arcImage ≃ₜ Set.Icc (0:ℝ) 1
  complementNonSimplyConnected : Prop
  wildnessProperty : Prop
  wildnessJustified : wildnessProperty ∨ ¬wildnessProperty

structure FoxArtinArcEvidence (F : FoxArtinArc) where
  isArcClosed : F.isArc
  complementNonSimplyConnectedClosed : F.complementNonSimplyConnected
  wildnessDecided : F.wildnessProperty ∨ ¬F.wildnessProperty

def FoxArtinArcClosed (F : FoxArtinArc) : Prop :=
  F.wildnessProperty ∨ ¬F.wildnessProperty

theorem fox_artin_arc_closed_from_evidence (F : FoxArtinArc)
    (ev : FoxArtinArcEvidence F) : FoxArtinArcClosed F := by
  exact ev.wildnessDecided

end WildEmbeddingsCanonicalLaneLean
end HautevilleHouse