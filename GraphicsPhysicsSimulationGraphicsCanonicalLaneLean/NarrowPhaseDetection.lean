import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsPhysicsSimulationGraphicsCanonicalLaneLean

structure NarrowPhaseDetectionPackage where
  contactPoints : Type
  penetrationDepth : Prop
  separatingAxisTest : Prop
  penetrationDepthTerm : penetrationDepth
  separatingAxisTestTerm : separatingAxisTest

structure NarrowPhaseDetectionEvidence (N : NarrowPhaseDetectionPackage) where
  penetrationDepthClosed : N.penetrationDepth
  separatingAxisTestClosed : N.separatingAxisTest

def NarrowPhaseDetectionClosed (N : NarrowPhaseDetectionPackage) : Prop :=
  N.penetrationDepth ∧ N.separatingAxisTest

theorem narrow_phase_detection_closed_from_evidence (N : NarrowPhaseDetectionPackage)
    (E : NarrowPhaseDetectionEvidence N) : NarrowPhaseDetectionClosed N := by
  exact And.intro E.penetrationDepthClosed E.separatingAxisTestClosed

end GraphicsPhysicsSimulationGraphicsCanonicalLaneLean
end HautevilleHouse
