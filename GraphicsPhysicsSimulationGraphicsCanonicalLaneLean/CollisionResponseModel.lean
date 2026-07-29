import canonicalLaneMathlib.AdmissibleClass

/-!
# Collision Response Model Package
-/

namespace HautevilleHouse
namespace GraphicsPhysicsSimulationGraphicsCanonicalLaneLean

structure CollisionResponseModelPackage where
  detection : Prop
  resolution : Prop
  restitution : Type u
  friction : Type v
  detectionTerm : detection
  resolutionTerm : resolution
  restitutionTerm : restitution
  frictionTerm : friction

structure CollisionResponseModelEvidence (C : CollisionResponseModelPackage) where
  detectionClosed : C.detection
  resolutionClosed : C.resolution

def CollisionResponseModelClosed (C : CollisionResponseModelPackage) : Prop :=
  C.detection ∧ C.resolution

theorem collision_response_model_closed_from_evidence
    (C : CollisionResponseModelPackage) (E : CollisionResponseModelEvidence C) :
    CollisionResponseModelClosed C := by
  exact And.intro E.detectionClosed E.resolutionClosed

end GraphicsPhysicsSimulationGraphicsCanonicalLaneLean
end HautevilleHouse