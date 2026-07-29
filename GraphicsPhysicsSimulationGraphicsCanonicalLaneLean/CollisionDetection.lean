import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsPhysicsSimulationGraphicsCanonicalLaneLean

structure CollisionDetectionPackage where
  primitiveShapes : Type u
  broadPhase : Type v
  narrowPhase : Type w
  manifoldExtraction : Type x
  detectionComplete : Prop
  allCollisionsFound : Prop

structure CollisionDetectionEvidence (C : CollisionDetectionPackage) where
  detectionCompleteClosed : C.detectionComplete
  allCollisionsFoundClosed : C.allCollisionsFound

def CollisionDetectionClosed (C : CollisionDetectionPackage) : Prop :=
  C.detectionComplete ∧ C.allCollisionsFound

theorem collision_detection_closed_from_evidence (C : CollisionDetectionPackage)
    (E : CollisionDetectionEvidence C) : CollisionDetectionClosed C := by
  exact And.intro E.detectionCompleteClosed E.allCollisionsFoundClosed

end GraphicsPhysicsSimulationGraphicsCanonicalLaneLean
end HautevilleHouse