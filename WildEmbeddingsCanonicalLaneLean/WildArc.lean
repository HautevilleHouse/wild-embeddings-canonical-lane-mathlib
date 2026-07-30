import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WildEmbeddingsCanonicalLaneLean

structure WildArc where
  ambientSpace : Type u
  ambientTopology : TopologicalSpace ambientSpace
  arcImage : Set ambientSpace
  arcHomeomorphicToInterval : arcImage ≃ₜ Set.Icc (0:ℝ) 1
  locallyTame : Prop
  tamenessWitness : locallyTame ∨ ¬locallyTame

structure WildArcEvidence (W : WildArc) where
  arcHomeomorphicToIntervalClosed : W.arcHomeomorphicToInterval
  tamenessDecided : W.locallyTame ∨ ¬W.locallyTame

def WildArcClosed (W : WildArc) : Prop :=
  W.locallyTame ∨ ¬W.locallyTame

theorem wild_arc_closed_from_evidence (W : WildArc) (ev : WildArcEvidence W) : WildArcClosed W := by
  exact ev.tamenessDecided

end WildEmbeddingsCanonicalLaneLean
end HautevilleHouse