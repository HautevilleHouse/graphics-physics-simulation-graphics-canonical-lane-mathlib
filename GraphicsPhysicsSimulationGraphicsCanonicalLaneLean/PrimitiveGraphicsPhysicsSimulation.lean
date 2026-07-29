import canonicalLaneMathlib.AdmissibleClass

/-!
# Primitive Graphics Physics Simulation Package
-/

namespace HautevilleHouse
namespace GraphicsPhysicsSimulationGraphicsCanonicalLaneLean

structure PrimitiveRigidBody where
  position : Type u
  orientation : Type v
  mass : Type w
  velocity : Type x
  angularVelocity : Type y
  forceAccumulator : Type z
  positionTerm : position
  orientationTerm : orientation
  massTerm : mass
  velocityTerm : velocity
  angularVelocityTerm : angularVelocity
  forceAccumulatorTerm : forceAccumulator

structure PrimitiveConstraint where
  type : Type u
  parameters : Type v
  active : Prop
  typeTerm : type
  parametersTerm : parameters
  activeTerm : active

structure PrimitiveCollisionShape where
  geometry : Type u
  material : Type v
  geometryTerm : geometry
  materialTerm : material

structure PrimitiveForceField where
  fieldFunction : Type u
  parameters : Type v
  active : Prop
  fieldFunctionTerm : fieldFunction
  parametersTerm : parameters
  activeTerm : active

end GraphicsPhysicsSimulationGraphicsCanonicalLaneLean
end HautevilleHouse