import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean

structure HodgkinHuxleyModel where
  membranePotential : ℝ → ℝ
  gatingVariables : ℝ → ℝ × ℝ × ℝ
  sodiumCurrent : ℝ → ℝ
  potassiumCurrent : ℝ → ℝ
  leakCurrent : ℝ → ℝ

def HodgkinHuxleyAdmissibleClass (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem hodgkin_huxley_bridge (A : AdmissibleClass) : bridgeClosed A :=
  bridge_from_admissible_class A

theorem hodgkin_huxley_gate (A : AdmissibleClass) : gateClosed A :=
  gate_from_admissible_class A

end NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean
end HautevilleHouse