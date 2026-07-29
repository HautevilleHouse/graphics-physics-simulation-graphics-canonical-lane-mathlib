import GraphicsPhysicsSimulationGraphicsCanonicalLaneLean.PerelmanEntropy

namespace HautevilleHouse
namespace GraphicsPhysicsSimulationGraphicsCanonicalLaneLean

structure GraphicsPipelinePackage where
  vertexShader : Type
  geometryShader : Type
  fragmentShader : Type
  pipelineStageOrdered : Prop
  shaderCompilationValid : Prop
  uniformDataConsistent : Prop

def GraphicsPipelineClosed (P : GraphicsPipelinePackage) : Prop :=
  P.pipelineStageOrdered ∧ P.shaderCompilationValid ∧ P.uniformDataConsistent

end GraphicsPhysicsSimulationGraphicsCanonicalLaneLean
end HautevilleHouse
