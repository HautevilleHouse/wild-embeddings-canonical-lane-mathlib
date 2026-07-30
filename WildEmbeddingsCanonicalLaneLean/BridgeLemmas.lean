import HautevilleHouse.WildEmbeddingsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace WildEmbeddingsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WildEmbeddingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end WildEmbeddingsCanonicalLaneLean
end HautevilleHouse
