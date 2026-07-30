import HautevilleHouse.WildEmbeddingsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace WildEmbeddingsCanonicalLaneLean

structure WildEmbeddingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure WildEmbeddingAdmittedObject where
  space : WildEmbeddingSpace
  isWildEmbedding : Prop
  targetEuclideanSpace : Type
  targetTopology : TopologicalSpace targetEuclideanSpace
  conclusion : isWildEmbedding

def WildEmbeddingWitnessClosed (O : WildEmbeddingAdmittedObject) : Prop :=
  O.isWildEmbedding

end WildEmbeddingsCanonicalLaneLean
end HautevilleHouse