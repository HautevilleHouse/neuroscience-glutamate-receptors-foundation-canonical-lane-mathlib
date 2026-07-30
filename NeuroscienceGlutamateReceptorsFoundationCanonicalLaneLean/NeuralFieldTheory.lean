import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean

structure NeuralFieldModel where
  activationFunction : ℝ → ℝ
  connectivityKernel : ℝ × ℝ → ℝ
  externalInput : ℝ → ℝ
  fieldDynamics : (ℝ → ℝ) → ℝ → ℝ
  stationaryStates : Prop
  stability : Prop

def NeuralFieldAdmissibleClass (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem neural_field_bridge (A : AdmissibleClass) : bridgeClosed A :=
  bridge_from_admissible_class A

theorem neural_field_gate (A : AdmissibleClass) : gateClosed A :=
  gate_from_admissible_class A

end NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean
end HautevilleHouse