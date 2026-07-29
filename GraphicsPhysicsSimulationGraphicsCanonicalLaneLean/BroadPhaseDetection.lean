import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsPhysicsSimulationGraphicsCanonicalLaneLean

structure BroadPhaseDetectionPackage where
  pairsGenerated : Type
  sweepAndPruneDone : Prop
  sAPAlgorithmValid : Prop
  sweepAndPruneDoneTerm : sweepAndPruneDone
  sAPAlgorithmValidTerm : sAPAlgorithmValid

structure BroadPhaseDetectionEvidence (B : BroadPhaseDetectionPackage) where
  sweepAndPruneDoneClosed : B.sweepAndPruneDone
  sAPAlgorithmValidClosed : B.sAPAlgorithmValid

def BroadPhaseDetectionClosed (B : BroadPhaseDetectionPackage) : Prop :=
  B.sweepAndPruneDone ∧ B.sAPAlgorithmValid

theorem broad_phase_detection_closed_from_evidence (B : BroadPhaseDetectionPackage)
    (E : BroadPhaseDetectionEvidence B) : BroadPhaseDetectionClosed B := by
  exact And.intro E.sweepAndPruneDoneClosed E.sAPAlgorithmValidClosed

end GraphicsPhysicsSimulationGraphicsCanonicalLaneLean
end HautevilleHouse
