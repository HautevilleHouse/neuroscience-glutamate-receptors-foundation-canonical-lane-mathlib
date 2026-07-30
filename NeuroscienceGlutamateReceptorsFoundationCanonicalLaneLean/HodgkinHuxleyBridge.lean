import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean

structure HodgkinHuxleyBridge where
  membranePotential : Prop
  sodiumChannel : Prop
  potassiumChannel : Prop
  leakChannel : Prop
  actionPotentialGeneration : Prop
  membranePotentialTerm : membranePotential
  sodiumChannelTerm : sodiumChannel
  potassiumChannelTerm : potassiumChannel
  leakChannelTerm : leakChannel
  actionPotentialGenerationTerm : actionPotentialGeneration

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean
end HautevilleHouse
