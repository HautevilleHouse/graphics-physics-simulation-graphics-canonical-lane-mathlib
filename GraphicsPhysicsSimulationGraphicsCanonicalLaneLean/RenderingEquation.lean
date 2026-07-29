import GraphicsPhysicsSimulationGraphicsCanonicalLaneLean.GraphicsPipeline

namespace HautevilleHouse
namespace GraphicsPhysicsSimulationGraphicsCanonicalLaneLean

structure RenderingEquationPackage (P : GraphicsPipelinePackage) where
  radianceIntegral : Type
  brdfModel : Type
  lightTransport : Prop
  monteCarloEstimate : Prop
  convergenceApproved : Prop

def RenderingEquationClosed {P : GraphicsPipelinePackage} (R : RenderingEquationPackage P) : Prop :=
  R.lightTransport ∧ R.monteCarloEstimate ∧ R.convergenceApproved

theorem rendering_equation_closed {P : GraphicsPipelinePackage} (R : RenderingEquationPackage P) : RenderingEquationClosed R := by
  exact And.intro R.lightTransport (And.intro R.monteCarloEstimate R.convergenceApproved)

end GraphicsPhysicsSimulationGraphicsCanonicalLaneLean
end HautevilleHouse
