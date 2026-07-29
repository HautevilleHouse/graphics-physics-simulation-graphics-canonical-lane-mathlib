import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsPhysicsSimulationGraphicsCanonicalLaneLean

structure CollisionResolutionPackage where
  impulseType : Type
  frictionModel : Type
  restitutionCoefficient : Prop
  restitutionCoefficientTerm : restitutionCoefficient

structure CollisionResolutionEvidence (C : CollisionResolutionPackage) where
  restitutionCoefficientClosed : C.restitutionCoefficient

def CollisionResolutionClosed (C : CollisionResolutionPackage) : Prop :=
  C.restitutionCoefficient

theorem collision_resolution_closed_from_evidence (C : CollisionResolutionPackage)
    (E : CollisionResolutionEvidence C) : CollisionResolutionClosed C := by
  exact E.restitutionCoefficientClosed

end GraphicsPhysicsSimulationGraphicsCanonicalLaneLean
end HautevilleHouse
