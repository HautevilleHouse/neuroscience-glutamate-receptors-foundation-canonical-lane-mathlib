import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean

structure GlutamateReceptorSubtype where
  name : String
  ionotropic : Prop
  metabotropic : Prop
  permeability : Prop
  gatingMechanism : Prop

structure AMPAReceptor where
  subtype : GlutamateReceptorSubtype
  fastExcitatoryTransmission : Prop
  desensitizationKinetics : Prop

structure NMDAReceptor where
  subtype : GlutamateReceptorSubtype
  voltageDependentBlock : Prop
  calciumPermeability : Prop
  slowKinetics : Prop

structure KainateReceptor where
  subtype : GlutamateReceptorSubtype
  presynapticModulation : Prop
  postsynapticResponse : Prop

structure MetabotropicReceptor where
  subtype : GlutamateReceptorSubtype
  gProteinCoupled : Prop
  secondMessengerCascade : Prop

def GlutamateReceptorAdmissibleClass (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean
end HautevilleHouse