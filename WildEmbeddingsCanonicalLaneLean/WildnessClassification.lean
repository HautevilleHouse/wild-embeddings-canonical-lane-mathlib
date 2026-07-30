import HautevilleHouse.WildEmbeddingsCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace WildEmbeddingsCanonicalLaneLean

structure WildnessClassificationPackage where
  wildSphereEmbedding : WildEmbeddingObject
  tameClassification : Prop
  wildnessIndex : ℕ
  classificationEvidence : tameClassification

def WildnessClassificationClosed (P : WildnessClassificationPackage) : Prop :=
  P.tameClassification

theorem wildness_classification_from_evidence
    (P : WildnessClassificationPackage) (E : P.tameClassification) :
    WildnessClassificationClosed P := E

end WildEmbeddingsCanonicalLaneLean
end HautevilleHouse
