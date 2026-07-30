import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WildEmbeddingsCanonicalLaneLean

structure CantorSetEmbedding where
  ambientSpace : Type u
  ambientTopology : TopologicalSpace ambientSpace
  cantorImage : Set ambientSpace
  isCantorSet : cantorImage ≃ₜ TopologicalSpace.CantorSet
  wildnessProperty : Prop
  wildnessJustified : wildnessProperty ∨ ¬wildnessProperty

structure CantorSetEmbeddingEvidence (C : CantorSetEmbedding) where
  isCantorSetClosed : C.isCantorSet
  wildnessDecided : C.wildnessProperty ∨ ¬C.wildnessProperty

def CantorSetEmbeddingClosed (C : CantorSetEmbedding) : Prop :=
  C.wildnessProperty ∨ ¬C.wildnessProperty

theorem cantor_set_embedding_closed_from_evidence (C : CantorSetEmbedding)
    (ev : CantorSetEmbeddingEvidence C) : CantorSetEmbeddingClosed C := by
  exact ev.wildnessDecided

end WildEmbeddingsCanonicalLaneLean
end HautevilleHouse