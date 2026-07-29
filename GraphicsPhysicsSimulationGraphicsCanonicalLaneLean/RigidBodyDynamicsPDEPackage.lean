import canonicalLaneMathlib.AdmissibleClass

/-!
# Rigid Body Dynamics PDE Package
-/

namespace HautevilleHouse
namespace GraphicsPhysicsSimulationGraphicsCanonicalLaneLean

structure RigidBodyDynamicsPDEPackage where
  position : Type u
  velocity : Type v
  acceleration : Type w
  equation : Prop
  initialConditions : Prop
  equationTerm : equation
  initialConditionsTerm : initialConditions

structure RigidBodyDynamicsPDEEvidence (D : RigidBodyDynamicsPDEPackage) where
  equationClosed : D.equation
  initialConditionsClosed : D.initialConditions

def RigidBodyDynamicsPDEClosed (D : RigidBodyDynamicsPDEPackage) : Prop :=
  D.equation ∧ D.initialConditions

theorem rigid_body_dynamics_pde_closed_from_evidence
    (D : RigidBodyDynamicsPDEPackage) (E : RigidBodyDynamicsPDEEvidence D) :
    RigidBodyDynamicsPDEClosed D := by
  exact And.intro E.equationClosed E.initialConditionsClosed

end GraphicsPhysicsSimulationGraphicsCanonicalLaneLean
end HautevilleHouse