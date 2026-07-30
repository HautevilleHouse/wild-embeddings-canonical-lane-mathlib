import canonicalLaneMathlib.AdmissibleClass
import WildEmbeddingsCanonicalLaneLean.AmbientTopology

namespace HautevilleHouse
namespace WildEmbeddingsCanonicalLaneLean

structure WildAdmittedObject where
  ambient : AmbientSpace
  embedding : EmbeddingData ambient
  wildCondition : Prop
  locallyFlat : Prop
  tameApproximation : Prop
  conclusion : wildCondition ∧ locallyFlat ∧ tameApproximation

structure WildAdmissibleClass where
  object : WildAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def wildAdmittedClosure (A : WildAdmissibleClass) : Prop :=
  WildWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end WildEmbeddingsCanonicalLaneLean
end HautevilleHouse