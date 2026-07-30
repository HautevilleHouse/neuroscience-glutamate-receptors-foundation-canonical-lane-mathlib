import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean

structure MetabotropicGlutamateReceptorsPackage where
  gpcRCoupling : Prop
  secondMessengerSignaling : Prop
  presynapticModulation : Prop
  postsynapticModulation : Prop

structure MetabotropicGlutamateReceptorsEvidence (M : MetabotropicGlutamateReceptorsPackage) where
  gpcRCouplingClosed : M.gpcRCoupling
  secondMessengerSignalingClosed : M.secondMessengerSignaling
  presynapticModulationClosed : M.presynapticModulation
  postsynapticModulationClosed : M.postsynapticModulation

def MetabotropicGlutamateReceptorsClosed (M : MetabotropicGlutamateReceptorsPackage) : Prop :=
  M.gpcRCoupling ∧ M.secondMessengerSignaling ∧ M.presynapticModulation ∧ M.postsynapticModulation

theorem metabotropic_glutamate_receptors_closed_from_evidence
    (M : MetabotropicGlutamateReceptorsPackage) (E : MetabotropicGlutamateReceptorsEvidence M) :
    MetabotropicGlutamateReceptorsClosed M := by
  exact And.intro E.gpcRCouplingClosed
    (And.intro E.secondMessengerSignalingClosed
      (And.intro E.presynapticModulationClosed E.postsynapticModulationClosed))

end NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean
end HautevilleHouse