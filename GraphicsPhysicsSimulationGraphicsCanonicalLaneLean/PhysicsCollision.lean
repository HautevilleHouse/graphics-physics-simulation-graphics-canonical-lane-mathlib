import GraphicsPhysicsSimulationGraphicsCanonicalLaneLean.RenderingEquation

namespace HautevilleHouse
namespace GraphicsPhysicsSimulationGraphicsCanonicalLaneLean

structure PhysicsCollisionPackage where
  broadphase : Type
  narrowphase : Type
  contactResolution : Prop
  frictionModel : Prop
  restitutionCoefficient : ℝ

def PhysicsCollisionClosed (C : PhysicsCollisionPackage) : Prop :=
  C.contactResolution ∧ C.frictionModel ∧ C.restitutionCoefficient > 0

theorem physics_collision_closed (C : PhysicsCollisionPackage) : PhysicsCollisionClosed C := by
  exact And.intro C.contactResolution (And.intro C.frictionModel (by positivity))

end GraphicsPhysicsSimulationGraphicsCanonicalLaneLean
end HautevilleHouse
