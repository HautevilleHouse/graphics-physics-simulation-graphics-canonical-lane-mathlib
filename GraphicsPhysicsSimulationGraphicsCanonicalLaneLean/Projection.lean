import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsPhysicsSimulationGraphicsCanonicalLaneLean

def graphicsPhysicsSimulationProjection : Projection GraphicsPhysicsSimulationEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem graphics_physics_simulation_projection_idempotent (x : GraphicsPhysicsSimulationEndgameState) :
    graphicsPhysicsSimulationProjection.toFun (graphicsPhysicsSimulationProjection.toFun x) = graphicsPhysicsSimulationProjection.toFun x := by
  exact graphicsPhysicsSimulationProjection.idempotent x

end GraphicsPhysicsSimulationGraphicsCanonicalLaneLean
end HautevilleHouse