import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WildEmbeddingsCanonicalLaneLean.AlexanderHornedSphere

namespace HautevilleHouse
namespace WildEmbeddingsCanonicalLaneLean

structure WildArc where
  arcImage : Set ℝ³
  homeomorphicToInterval : Prop
  wildTameClassification : Prop
  tameIfLocallyFlat : Prop
  wildnessType : Prop

def WildArcClosed (\(W : WildArc\)) : Prop :=
  W.wildTameClassification ∧ W.wildnessType

structure WildArcEvidence (\(W : WildArc\)) where
  wildTameClassificationClosed : W.wildTameClassification
  wildnessTypeClosed : W.wildnessType

theorem wild_arc_closed_from_evidence
    (\(W : WildArc\)) (\(ev : WildArcEvidence W\)) :
    WildArcClosed W := by
  exact And.intro ev.wildTameClassificationClosed ev.wildnessTypeClosed

end WildEmbeddingsCanonicalLaneLean
end HautevilleHouse