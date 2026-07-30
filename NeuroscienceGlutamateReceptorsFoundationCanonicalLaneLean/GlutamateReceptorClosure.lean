import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean

structure GlutamateReceptorClosurePackage where
  receptorFunctionClosed : Prop
  signalingPathwayClosed : Prop
  plasticityMechanismClosed : Prop

def receptorClosure (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

end NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean
end HautevilleHouse
