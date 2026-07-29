import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsPhysicsSimulationGraphicsCanonicalLaneLean

structure PhotonMappingPackage where
  photonEmission : Prop
  photonScattering : Prop
  photonStorage : Prop
  densityEstimation : Prop
  finalGathering : Prop

structure PhotonMappingEvidence (P : PhotonMappingPackage) where
  photonEmissionClosed : P.photonEmission
  photonScatteringClosed : P.photonScattering
  photonStorageClosed : P.photonStorage
  densityEstimationClosed : P.densityEstimation
  finalGatheringClosed : P.finalGathering

def PhotonMappingClosed (P : PhotonMappingPackage) : Prop :=
  P.photonEmission ∧ P.photonScattering ∧ P.photonStorage ∧ P.densityEstimation ∧ P.finalGathering

theorem photon_mapping_closed_from_evidence (P : PhotonMappingPackage) (E : PhotonMappingEvidence P) : PhotonMappingClosed P := by
  exact And.intro E.photonEmissionClosed
    (And.intro E.photonScatteringClosed
      (And.intro E.photonStorageClosed
        (And.intro E.densityEstimationClosed E.finalGatheringClosed)))

end GraphicsPhysicsSimulationGraphicsCanonicalLaneLean
end HautevilleHouse
