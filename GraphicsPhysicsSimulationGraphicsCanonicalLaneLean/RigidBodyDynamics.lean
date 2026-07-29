import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsPhysicsSimulationGraphicsCanonicalLaneLean

structure RigidBodyDynamicsPackage where
  massInertia : Prop
  forceIntegration : Prop
  constraintSolver : Prop
  massInertiaClosed : massInertia
  forceIntegrationClosed : forceIntegration
  constraintSolverClosed : constraintSolver

structure RigidBodyDynamicsEvidence (R : RigidBodyDynamicsPackage) where
  massInertiaClosed : R.massInertia
  forceIntegrationClosed : R.forceIntegration
  constraintSolverClosed : R.constraintSolver

def RigidBodyDynamicsClosed (R : RigidBodyDynamicsPackage) : Prop :=
  R.massInertia ∧ R.forceIntegration ∧ R.constraintSolver

theorem rigid_body_dynamics_closed_from_evidence
    (R : RigidBodyDynamicsPackage) (E : RigidBodyDynamicsEvidence R) :
    RigidBodyDynamicsClosed R := by
  exact And.intro E.massInertiaClosed (And.intro E.forceIntegrationClosed E.constraintSolverClosed)

end GraphicsPhysicsSimulationGraphicsCanonicalLaneLean
end HautevilleHouse