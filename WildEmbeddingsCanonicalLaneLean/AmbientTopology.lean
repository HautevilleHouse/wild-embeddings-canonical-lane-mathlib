import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WildEmbeddingsCanonicalLaneLean

structure AmbientSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  dimension : Nat
  dimensionEqThree : dimension = 3
  ambientEuclidean : Prop
  ambientEuclideanTerm : ambientEuclidean

structure EmbeddingData (A : AmbientSpace) where
  domain : Type
  domainTopology : TopologicalSpace domain
  domainDimension : Nat
  domainDimEqOne : domainDimension = 1
  inclusionMap : domain → A.carrier
  continuousInclusion : Continuous inclusionMap
  injectiveInclusion : Function.Injective inclusionMap

end WildEmbeddingsCanonicalLaneLean
end HautevilleHouse