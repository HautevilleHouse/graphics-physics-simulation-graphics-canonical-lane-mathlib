import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsPhysicsSimulationGraphicsCanonicalLaneLean

structure AcceleratedMeshPackage where
  verticesCount : Nat
  faces : Type
  accelerationStructure : Type
  hierarchyDepth : Prop
  hierarchyDepthTerm : hierarchyDepth

structure AcceleratedMeshEvidence (A : AcceleratedMeshPackage) where
  hierarchyDepthClosed : A.hierarchyDepth

def AcceleratedMeshClosed (A : AcceleratedMeshPackage) : Prop :=
  A.hierarchyDepth

theorem accelerated_mesh_closed_from_evidence (A : AcceleratedMeshPackage)
    (E : AcceleratedMeshEvidence A) : AcceleratedMeshClosed A := by
  exact E.hierarchyDepthClosed

end GraphicsPhysicsSimulationGraphicsCanonicalLaneLean
end HautevilleHouse
