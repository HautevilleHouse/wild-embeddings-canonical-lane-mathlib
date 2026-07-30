import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WildEmbeddingsCanonicalLaneLean

structure TopologicalEmbeddingSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  embeddedImage : Type v
  imageTopology : TopologicalSpace embeddedImage
  embeddingMap : carrier → embeddedImage
  isEmbedding : Embedding embeddingMap

structure TopologicalEmbeddingEvidence (E : TopologicalEmbeddingSpace) where
  embeddingMapClosed : E.isEmbedding

def TopologicalEmbeddingClosed (E : TopologicalEmbeddingSpace) : Prop :=
  E.isEmbedding

theorem topological_embedding_closed_from_evidence (E : TopologicalEmbeddingSpace)
    (ev : TopologicalEmbeddingEvidence E) : TopologicalEmbeddingClosed E := by
  exact ev.embeddingMapClosed

end WildEmbeddingsCanonicalLaneLean
end HautevilleHouse