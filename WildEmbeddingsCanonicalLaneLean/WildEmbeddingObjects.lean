import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WildEmbeddingsCanonicalLaneLean

structure WildEmbeddingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure WildEmbeddingObject where
  space : WildEmbeddingSpace
  embeddedSpace : WildEmbeddingSpace
  embeddingMap : carrier → embeddedSpace.carrier
  continuousEmbedding : Prop
  wildnessProperty : Prop
  conclusion : wildnessProperty

structure WildEmbeddingState where
  object : WildEmbeddingObject

def WildEmbeddingWitnessClosed (O : WildEmbeddingObject) : Prop :=
  O.wildnessProperty

end WildEmbeddingsCanonicalLaneLean
end HautevilleHouse
