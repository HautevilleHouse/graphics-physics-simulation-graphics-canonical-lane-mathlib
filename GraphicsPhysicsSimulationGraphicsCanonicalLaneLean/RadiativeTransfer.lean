import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsPhysicsSimulationGraphicsCanonicalLaneLean

structure RadiativeTransferPackage where
  absorptionCoefficient : Prop
  scatteringCoefficient : Prop
  phaseFunction : Prop
  radiativeTransferEquation : Prop
  boundaryConditions : Prop

structure RadiativeTransferEvidence (R : RadiativeTransferPackage) where
  absorptionCoefficientClosed : R.absorptionCoefficient
  scatteringCoefficientClosed : R.scatteringCoefficient
  phaseFunctionClosed : R.phaseFunction
  radiativeTransferEquationClosed : R.radiativeTransferEquation
  boundaryConditionsClosed : R.boundaryConditions

def RadiativeTransferClosed (R : RadiativeTransferPackage) : Prop :=
  R.absorptionCoefficient ∧ R.scatteringCoefficient ∧ R.phaseFunction ∧ R.radiativeTransferEquation ∧ R.boundaryConditions

theorem radiative_transfer_closed_from_evidence (R : RadiativeTransferPackage) (E : RadiativeTransferEvidence R) : RadiativeTransferClosed R := by
  exact And.intro E.absorptionCoefficientClosed
    (And.intro E.scatteringCoefficientClosed
      (And.intro E.phaseFunctionClosed
        (And.intro E.radiativeTransferEquationClosed E.boundaryConditionsClosed)))

end GraphicsPhysicsSimulationGraphicsCanonicalLaneLean
end HautevilleHouse
