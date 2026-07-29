import GraphicsPhysicsSimulationGraphicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsPhysicsSimulationGraphicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GraphicsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GraphicsPhysicsSimulationGraphicsCanonicalLaneLean
end HautevilleHouse
