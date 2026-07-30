import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean

structure HebbianPlasticityRule where
  preSynapticActivity : ℝ → ℝ
  postSynapticActivity : ℝ → ℝ
  weightChange : ℝ → ℝ
  correlationDependence : Prop
  locality : Prop
  cooperativity : Prop
  specificity : Prop

def HebbianAdmissibleClass (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem hebbian_bridge (A : AdmissibleClass) : bridgeClosed A :=
  bridge_from_admissible_class A

theorem hebbian_gate (A : AdmissibleClass) : gateClosed A :=
  gate_from_admissible_class A

end NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean
end HautevilleHouse