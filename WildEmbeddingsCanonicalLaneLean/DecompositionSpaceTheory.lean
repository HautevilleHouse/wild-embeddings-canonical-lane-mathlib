import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WildEmbeddingsCanonicalLaneLean.WildCantorSetConstruction

namespace HautevilleHouse
namespace WildEmbeddingsCanonicalLaneLean

structure DecompositionSpace where
  underlyingSpace : Type u
  topology : TopologicalSpace underlyingSpace
  decomposition : underlyingSpace → Set (underlyingSpace)
  upperSemicontinuous : Prop
  nondegenerate : Prop
  shrinkable : Prop
  shrunkWildEmbedding : Prop

def DecompositionClosed (\(D : DecompositionSpace\)) : Prop :=
  D.upperSemicontinuous ∧ D.nondegenerate ∧ D.shrinkable

structure DecompositionEvidence (\(D : DecompositionSpace\)) where
  upperSemicontinuousClosed : D.upperSemicontinuous
  nondegenerateClosed : D.nondegenerate
  shrinkableClosed : D.shrinkable

theorem decomposition_closed_from_evidence
    (\(D : DecompositionSpace\)) (\(ev : DecompositionEvidence D\)) :
    DecompositionClosed D := by
  exact And.intro ev.upperSemicontinuousClosed
    (And.intro ev.nondegenerateClosed ev.shrinkableClosed)

end WildEmbeddingsCanonicalLaneLean
end HautevilleHouse