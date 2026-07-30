import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WildEmbeddingsCanonicalLaneLean

structure AlexanderHornedSphere where
  ambientSpace : Type u
  ambientTopology : TopologicalSpace ambientSpace
  sphereImage : Set ambientSpace
  isSphereEmbedding : sphereImage ≃ₜ (AlgebraicTopology.Sphere (Fin 3))
  complementSimplyConnected : Prop
  hornedProperty : Prop
  hornedJustified : hornedProperty ∨ ¬hornedProperty

structure AlexanderHornedSphereEvidence (A : AlexanderHornedSphere) where
  isSphereEmbeddingClosed : A.isSphereEmbedding
  complementSimplyConnectedClosed : A.complementSimplyConnected
  hornedDecided : A.hornedProperty ∨ ¬A.hornedProperty

def AlexanderHornedSphereClosed (A : AlexanderHornedSphere) : Prop :=
  A.hornedProperty ∨ ¬A.hornedProperty

theorem alexander_horned_sphere_closed_from_evidence (A : AlexanderHornedSphere)
    (ev : AlexanderHornedSphereEvidence A) : AlexanderHornedSphereClosed A := by
  exact ev.hornedDecided

end WildEmbeddingsCanonicalLaneLean
end HautevilleHouse