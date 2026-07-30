import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WildEmbeddingsCanonicalLaneLean.WildEmbeddingTopology

namespace HautevilleHouse
namespace WildEmbeddingsCanonicalLaneLean

structure CantorSetEmbedding where
  sphere : EmbeddedSphere
  cantorSet : Set (sphere.ambient)
  cantorInSphere : cantorSet ⊆ sphere.image
  closedNowhereDensePerfect : Prop
  wildnessInduced : Prop

def CantorSetWild (\(C : CantorSetEmbedding\)) : Prop :=
  C.wildnessInduced ∧ C.closedNowhereDensePerfect

structure CantorSetEvidence (\(C : CantorSetEmbedding\)) where
  closedNowhereDensePerfectClosed : C.closedNowhereDensePerfect
  wildnessInducedClosed : C.wildnessInduced

def CantorSetClosed (\(C : CantorSetEmbedding\)) : Prop :=
  C.closedNowhereDensePerfect ∧ C.wildnessInduced

theorem cantor_set_closed_from_evidence
    (\(C : CantorSetEmbedding\)) (\(ev : CantorSetEvidence C\)) :
    CantorSetClosed C := by
  exact And.intro ev.closedNowhereDensePerfectClosed ev.wildnessInducedClosed

end WildEmbeddingsCanonicalLaneLean
end HautevilleHouse