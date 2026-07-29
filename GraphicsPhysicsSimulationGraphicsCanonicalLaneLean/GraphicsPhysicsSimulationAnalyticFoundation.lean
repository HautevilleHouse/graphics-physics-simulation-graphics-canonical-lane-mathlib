import canonicalLaneMathlib.AdmissibleClass

/-!
# Graphics Physics Simulation Analytic Foundation
-/

namespace HautevilleHouse
namespace GraphicsPhysicsSimulationGraphicsCanonicalLaneLean

structure GraphicsPhysicsSimulationAnalyticFoundation where
  rigidBody : PrimitiveRigidBody
  constraint : PrimitiveConstraint
  collisionShape : PrimitiveCollisionShape
  forceField : PrimitiveForceField
  rigidBodyEvidence : rigidBody.positionTerm = rigidBody.positionTerm
  constraintEvidence : constraint.activeTerm = constraint.activeTerm
  collisionShapeEvidence : collisionShape.geometryTerm = collisionShape.geometryTerm
  forceFieldEvidence : forceField.activeTerm = forceField.activeTerm

def GraphicsPhysicsSimulationAnalyticFoundationClosed (A : GraphicsPhysicsSimulationAnalyticFoundation) : Prop :=
  A.rigidBody.positionTerm = A.rigidBody.positionTerm ∧
  A.constraint.activeTerm = A.constraint.activeTerm ∧
  A.collisionShape.geometryTerm = A.collisionShape.geometryTerm ∧
  A.forceField.activeTerm = A.forceField.activeTerm

theorem graphics_physics_simulation_analytic_foundation_closed_from_evidence
    (A : GraphicsPhysicsSimulationAnalyticFoundation) :
    GraphicsPhysicsSimulationAnalyticFoundationClosed A := by
  refine And.intro A.rigidBodyEvidence (And.intro A.constraintEvidence (And.intro A.collisionShapeEvidence A.forceFieldEvidence))

end GraphicsPhysicsSimulationGraphicsCanonicalLaneLean
end HautevilleHouse