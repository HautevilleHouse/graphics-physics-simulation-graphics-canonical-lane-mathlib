import canonicalLaneMathlib.AdmissibleClass

/-!
# Reviewer Bridge for Graphics Physics Simulation
-/

namespace HautevilleHouse
namespace GraphicsPhysicsSimulationGraphicsCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile :=
  [{ path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "dd2f871cd9d57f8aae5bcca4e79ba759e61da175a03181be56415c9881036413", present := true },
   { path := "notes/BRIDGE.md", role := "identification_bridge", sha256 := "4929ea55a02ecac4895996ce496ab75856074b35959f21826fe866ba616215d2", present := true }]

def reviewerChainSteps : List ReviewerChainStep :=
  [{ index := 1, label := "GS1" },
   { index := 2, label := "GS2" }]

def reviewerClosureGates : List ReviewerClosureGate :=
  [{ gate := "GS_G1", constant := "rigid_body_mass_threshold" },
   { gate := "GS_G2", constant := "collision_response_damping" }]

end GraphicsPhysicsSimulationGraphicsCanonicalLaneLean
end HautevilleHouse