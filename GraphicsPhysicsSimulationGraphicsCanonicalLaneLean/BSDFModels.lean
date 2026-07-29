import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsPhysicsSimulationGraphicsCanonicalLaneLean

structure BSDFModelsPackage where
  lambertianModel : Prop
  microfacetModel : Prop
  measuredBRDF : Prop
  btdfTransmission : Prop
  energyConservation : Prop

structure BSDFModelsEvidence (B : BSDFModelsPackage) where
  lambertianModelClosed : B.lambertianModel
  microfacetModelClosed : B.microfacetModel
  measuredBRDFClosed : B.measuredBRDF
  btdfTransmissionClosed : B.btdfTransmission
  energyConservationClosed : B.energyConservation

def BSDFModelsClosed (B : BSDFModelsPackage) : Prop :=
  B.lambertianModel ∧ B.microfacetModel ∧ B.measuredBRDF ∧ B.btdfTransmission ∧ B.energyConservation

theorem bsdf_models_closed_from_evidence (B : BSDFModelsPackage) (E : BSDFModelsEvidence B) : BSDFModelsClosed B := by
  exact And.intro E.lambertianModelClosed
    (And.intro E.microfacetModelClosed
      (And.intro E.measuredBRDFClosed
        (And.intro E.btdfTransmissionClosed E.energyConservationClosed)))

end GraphicsPhysicsSimulationGraphicsCanonicalLaneLean
end HautevilleHouse
