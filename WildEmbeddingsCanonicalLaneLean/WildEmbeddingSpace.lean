import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WildEmbeddingsCanonicalLaneLean

structure WildEmbeddingSpace where
  ambientManifold : Type u
  ambientTopology : TopologicalSpace ambientManifold
  embeddedSpace : Type v
  embeddedTopology : TopologicalSpace embeddedSpace
  embeddingMap : embeddedSpace → ambientManifold
  isTopologicalEmbedding : Prop

structure WildEmbeddingData where
  space : WildEmbeddingSpace
  wildnessCondition : Prop
  tameSubset : Prop
  wildCore : Prop
  wildnessConditionTerm : wildnessCondition

def WildEmbeddingClosed (W : WildEmbeddingData) : Prop :=
  W.wildnessCondition ∧ W.tameSubset ∧ W.wildCore

end WildEmbeddingsCanonicalLaneLean
end HautevilleHouse