import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsPhysicsSimulationGraphicsCanonicalLaneLean

def ConstrainedGraphicsPhysicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_graphics_physics_endgame (A : AdmissibleClass) :
    ConstrainedGraphicsPhysicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphicsPhysicsSimulationGraphicsCanonicalLaneLean
end HautevilleHouse