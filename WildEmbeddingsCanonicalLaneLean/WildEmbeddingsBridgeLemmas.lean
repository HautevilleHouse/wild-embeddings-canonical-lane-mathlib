import WildEmbeddingsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace WildEmbeddingsCanonicalLaneLean

def bridgeClosed (A : WildAdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : WildAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end WildEmbeddingsCanonicalLaneLean
end HautevilleHouse
