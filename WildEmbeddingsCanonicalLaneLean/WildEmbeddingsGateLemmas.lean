import WildEmbeddingsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace WildEmbeddingsCanonicalLaneLean

def gateClosed (A : WildAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : WildAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end WildEmbeddingsCanonicalLaneLean
end HautevilleHouse
