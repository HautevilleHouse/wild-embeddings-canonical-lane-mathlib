import canonicalLaneMathlib.AdmissibleClass
import WildEmbeddingsCanonicalLaneLean.WildEmbeddingBridgeLemmas
import WildEmbeddingsCanonicalLaneLean.WildEmbeddingGateLemmas

namespace HautevilleHouse
namespace WildEmbeddingsCanonicalLaneLean

def ConstrainedWildEmbeddingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_wild_embedding_endgame (A : AdmissibleClass) :
    ConstrainedWildEmbeddingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end WildEmbeddingsCanonicalLaneLean
end HautevilleHouse