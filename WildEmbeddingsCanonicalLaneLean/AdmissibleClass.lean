import HautevilleHouse.WildEmbeddingsCanonicalLaneLean.WildEmbeddingObjects

namespace HautevilleHouse
namespace WildEmbeddingsCanonicalLaneLean

structure AdmissibleClass where
  object : WildEmbeddingObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  WildEmbeddingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end WildEmbeddingsCanonicalLaneLean
end HautevilleHouse
