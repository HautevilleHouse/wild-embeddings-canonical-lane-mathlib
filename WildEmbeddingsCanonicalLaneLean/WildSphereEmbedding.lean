import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WildEmbeddingsCanonicalLaneLean.WildEmbeddingSpace

namespace HautevilleHouse
namespace WildEmbeddingsCanonicalLaneLean

structure WildSphereEmbedding where
  ambientManifold : Type u
  ambientTopology : TopologicalSpace ambientManifold
  sphereDimension : ℕ
  embeddingMap : Sphere sphereDimension → ambientManifold
  isTopologicalEmbedding : Prop
  wildnessCondition : Prop
  wildnessTerm : wildnessCondition
  tameRegion : Prop
  tameRegionTerm : tameRegion

def WildSphereEmbeddingClosed (S : WildSphereEmbedding) : Prop :=
  S.isTopologicalEmbedding ∧ S.wildnessCondition ∧ S.tameRegion

end WildEmbeddingsCanonicalLaneLean
end HautevilleHouse