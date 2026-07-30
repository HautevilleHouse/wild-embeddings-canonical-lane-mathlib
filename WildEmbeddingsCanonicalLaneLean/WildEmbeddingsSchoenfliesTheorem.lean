import WildEmbeddingsCanonicalLaneLean.CrumpledSpaceTopology

namespace HautevilleHouse
namespace WildEmbeddingsCanonicalLaneLean

structure SchoenfliesPackage {C : CrumpledSpaceStructure} where
  sphereSeparation : Prop
  schoenfliesConclusion : Prop
  wildEmbeddingExcluded : Prop

structure SchoenfliesEvidence {C : CrumpledSpaceStructure} (P : SchoenfliesPackage C) where
  sphereSeparationClosed : P.sphereSeparation
  schoenfliesConclusionClosed : P.schoenfliesConclusion
  wildEmbeddingExcludedClosed : P.wildEmbeddingExcluded

def SchoenfliesClosed {C : CrumpledSpaceStructure} (P : SchoenfliesPackage C) : Prop :=
  P.sphereSeparation ∧ P.schoenfliesConclusion ∧ P.wildEmbeddingExcluded

theorem schoenflies_closed_from_evidence {C : CrumpledSpaceStructure} (P : SchoenfliesPackage C) (E : SchoenfliesEvidence P) :
    SchoenfliesClosed P := by
  exact And.intro E.sphereSeparationClosed (And.intro E.schoenfliesConclusionClosed E.wildEmbeddingExcludedClosed)

end WildEmbeddingsCanonicalLaneLean
end HautevilleHouse
