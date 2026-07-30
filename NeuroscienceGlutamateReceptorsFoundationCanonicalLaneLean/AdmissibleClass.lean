import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean

structure AdmissibleGlutamateObject where
  receptorType : String
  bindingAffinity : Float
  conductance : Float
  signalingPathway : String
  evidenceWeight : Nat

def AdmissibleClass (A : AdmissibleGlutamateObject) : Prop :=
  A.evidenceWeight > 0

end NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean
end HautevilleHouse