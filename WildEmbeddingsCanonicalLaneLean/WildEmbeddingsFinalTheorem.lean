import WildEmbeddingsCanonicalLaneLean.WildBridgeLemmas
import WildEmbeddingsCanonicalLaneLean.WildGateLemmas

namespace HautevilleHouse
namespace WildEmbeddingsCanonicalLaneLean

def ConstrainedWildEmbeddingClosure (A : WildAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_wild_embedding_endgame (A : WildAdmissibleClass) :
    ConstrainedWildEmbeddingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end WildEmbeddingsCanonicalLaneLean
end HautevilleHouse