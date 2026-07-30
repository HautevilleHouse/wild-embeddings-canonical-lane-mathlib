import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WildEmbeddingsCanonicalLaneLean.WildSphereEmbedding

namespace HautevilleHouse
namespace WildEmbeddingsCanonicalLaneLean

structure SchoenfliesData where
  sphereEmbedding : WildSphereEmbedding
  jordanCurveTheoremApplied : Prop
  complementComponents : Set (Set (sphereEmbedding.ambientManifold))
  oneComponentTame : Prop
  wildnessInOtherComponent : Prop
  schoenfliesConclusion : Prop

def SchoenfliesClosed (S : SchoenfliesData) : Prop :=
  S.jordanCurveTheoremApplied ∧ S.oneComponentTame ∧ S.wildnessInOtherComponent ∧ S.schoenfliesConclusion

end WildEmbeddingsCanonicalLaneLean
end HautevilleHouse