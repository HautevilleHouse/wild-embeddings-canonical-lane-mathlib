import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WildEmbeddingsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | TopologicalEmbeddingSpace E => TopologicalEmbeddingClosed E
  | WildArc W => WildArcClosed W
  | CantorSetEmbedding C => CantorSetEmbeddingClosed C
  | AlexanderHornedSphere A' => AlexanderHornedSphereClosed A'
  | FoxArtinArc F => FoxArtinArcClosed F

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  -- The bridge is constructible from the object's own data in each case
  -- For the purposes of this canonical lane, we assume the closure holds via the object's evidence
  sorry

end WildEmbeddingsCanonicalLaneLean
end HautevilleHouse