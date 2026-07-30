import HautevilleHouse.WildEmbeddingsCanonicalLaneLean.WildEmbeddingObjects

namespace HautevilleHouse
namespace WildEmbeddingsCanonicalLaneLean

structure CantorSetEmbeddingPackage where
  cantorSetSpace : WildEmbeddingSpace
  targetSpace : WildEmbeddingSpace
  embeddingMap : cantorSetSpace.carrier → targetSpace.carrier
  topologicalEmbedding : Prop
  wildnessProperty : Prop
  embeddingEvidence : topologicalEmbedding ∧ wildnessProperty

def CantorSetEmbeddingClosed (P : CantorSetEmbeddingPackage) : Prop :=
  P.topologicalEmbedding ∧ P.wildnessProperty

theorem cantor_set_embedding_closed_from_evidence
    (P : CantorSetEmbeddingPackage) (E : P.topologicalEmbedding ∧ P.wildnessProperty) :
    CantorSetEmbeddingClosed P := E

end WildEmbeddingsCanonicalLaneLean
end HautevilleHouse
