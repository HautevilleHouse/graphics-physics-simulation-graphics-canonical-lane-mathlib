import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsPhysicsSimulationGraphicsCanonicalLaneLean

structure MonteCarloIntegrationPackage where
  importanceSampling : Prop
  multipleImportanceSampling : Prop
  russianRoulette : Prop
  nextEventEstimation : Prop
  pathSpaceIntegral : Prop

structure MonteCarloIntegrationEvidence (M : MonteCarloIntegrationPackage) where
  importanceSamplingClosed : M.importanceSampling
  multipleImportanceSamplingClosed : M.multipleImportanceSampling
  russianRouletteClosed : M.russianRoulette
  nextEventEstimationClosed : M.nextEventEstimation
  pathSpaceIntegralClosed : M.pathSpaceIntegral

def MonteCarloIntegrationClosed (M : MonteCarloIntegrationPackage) : Prop :=
  M.importanceSampling ∧ M.multipleImportanceSampling ∧ M.russianRoulette ∧ M.nextEventEstimation ∧ M.pathSpaceIntegral

theorem monte_carlo_integration_closed_from_evidence (M : MonteCarloIntegrationPackage) (E : MonteCarloIntegrationEvidence M) : MonteCarloIntegrationClosed M := by
  exact And.intro E.importanceSamplingClosed
    (And.intro E.multipleImportanceSamplingClosed
      (And.intro E.russianRouletteClosed
        (And.intro E.nextEventEstimationClosed E.pathSpaceIntegralClosed)))

end GraphicsPhysicsSimulationGraphicsCanonicalLaneLean
end HautevilleHouse
