import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WildEmbeddingsCanonicalLaneLean.WildEmbeddingSpace

namespace HautevilleHouse
namespace WildEmbeddingsCanonicalLaneLean

structure LocalFlatnessCriterion where
  ambientManifold : Type u
  ambientTopology : TopologicalSpace ambientManifold
  embeddedSubset : Set ambientManifold
  nonLocallyFlatPoints : Set ambientManifold
  nonLocallyFlatNonempty : Prop
  wildnessDetected : Prop

structure TameSubsetCondition where
  ambientManifold : Type u
  ambientTopology : TopologicalSpace ambientManifold
  tameSubset : Set ambientManifold
  isLocallyFlat : Prop
  tameSubsetIsOpen : tameSubset ∈ topologicalSpaceSets ambientTopology

def WildnessCriterionClosed (C : LocalFlatnessCriterion) (T : TameSubsetCondition) : Prop :=
  C.nonLocallyFlatNonempty ∧ T.isLocallyFlat

end WildEmbeddingsCanonicalLaneLean
end HautevilleHouse