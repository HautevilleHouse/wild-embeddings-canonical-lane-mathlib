import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WildEmbeddingsCanonicalLaneLean

structure EmbeddedSphere where
  ambient : Type u
  ambientTopology : TopologicalSpace ambient
  image : Set ambient
  homeomorphicToSphere : Prop
  wildPointSet : Set (ambient)
  wildBehavior : Prop

def WildEmbedding (\(E : EmbeddedSphere\)) : Prop :=
  E.homeomorphicToSphere ∧ E.wildBehavior

def NonWildEmbedding (\(E : EmbeddedSphere\)) : Prop :=
  E.homeomorphicToSphere ∧ ¬E.wildBehavior

structure WildEmbeddingEvidence (\(E : EmbeddedSphere\)) where
  homeomorphicToSphereClosed : E.homeomorphicToSphere
  wildBehaviorClosed : E.wildBehavior

def WildEmbeddingClosed (\(E : EmbeddedSphere\)) : Prop :=
  E.homeomorphicToSphere ∧ E.wildBehavior

theorem wild_embedding_closed_from_evidence
    (\(E : EmbeddedSphere\)) (\(ev : WildEmbeddingEvidence E\)) :
    WildEmbeddingClosed E := by
  exact And.intro ev.homeomorphicToSphereClosed ev.wildBehaviorClosed

end WildEmbeddingsCanonicalLaneLean
end HautevilleHouse