import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsPhysicsSimulationGraphicsCanonicalLaneLean

structure CollisionDetectionPackage where
  broadPhase : Prop
  narrowPhase : Prop
  contactGeneration : Prop
  broadPhaseClosed : broadPhase
  narrowPhaseClosed : narrowPhase
  contactGenerationClosed : contactGeneration

structure CollisionDetectionEvidence (C : CollisionDetectionPackage) where
  broadPhaseClosed : C.broadPhase
  narrowPhaseClosed : C.narrowPhase
  contactGenerationClosed : C.contactGeneration

def CollisionDetectionClosed (C : CollisionDetectionPackage) : Prop :=
  C.broadPhase ∧ C.narrowPhase ∧ C.contactGeneration

theorem collision_detection_closed_from_evidence
    (C : CollisionDetectionPackage) (E : CollisionDetectionEvidence C) :
    CollisionDetectionClosed C := by
  exact And.intro E.broadPhaseClosed (And.intro E.narrowPhaseClosed E.contactGenerationClosed)

end GraphicsPhysicsSimulationGraphicsCanonicalLaneLean
end HautevilleHouse