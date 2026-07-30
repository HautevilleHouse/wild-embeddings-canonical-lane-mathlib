import WildEmbeddingsCanonicalLaneLean.WildEmbeddingsAdmissibleClass

namespace HautevilleHouse
namespace WildEmbeddingsCanonicalLaneLean

def WildWitnessClosed (O : WildAdmittedObject) : Prop :=
  O.wildCondition ∧ O.locallyFlat ∧ O.tameApproximation

def bridgeClosed (A : WildAdmissibleClass) : Prop :=
  WildWitnessClosed A.object

theorem bridge_from_admissible_class (A : WildAdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end WildEmbeddingsCanonicalLaneLean
end HautevilleHouse