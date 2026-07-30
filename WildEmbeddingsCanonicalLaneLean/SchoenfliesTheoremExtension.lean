import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WildEmbeddingsCanonicalLaneLean.DecompositionSpaceTheory

namespace HautevilleHouse
namespace WildEmbeddingsCanonicalLaneLean

structure SchoenfliesExtension where
  simpleClosedCurve : Type u
  ambientPlane : Type u
  curveInPlane : simpleClosedCurve → ambientPlane
  jordanSeparation : Prop
  schoenfliesConclusion : Prop
  wildSchoenfliesExtension : Prop
  wildPointSet : Set simpleClosedCurve

def SchoenfliesClosed (\(S : SchoenfliesExtension\)) : Prop :=
  S.schoenfliesConclusion ∧ S.wildSchoenfliesExtension

structure SchoenfliesEvidence (\(S : SchoenfliesExtension\)) where
  schoenfliesConclusionClosed : S.schoenfliesConclusion
  wildSchoenfliesExtensionClosed : S.wildSchoenfliesExtension

theorem schoenflies_closed_from_evidence
    (\(S : SchoenfliesExtension\)) (\(ev : SchoenfliesEvidence S\)) :
    SchoenfliesClosed S := by
  exact And.intro ev.schoenfliesConclusionClosed ev.wildSchoenfliesExtensionClosed

end WildEmbeddingsCanonicalLaneLean
end HautevilleHouse