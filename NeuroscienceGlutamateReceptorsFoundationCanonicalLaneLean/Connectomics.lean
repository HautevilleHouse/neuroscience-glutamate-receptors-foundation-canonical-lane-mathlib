import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean

structure Connectome where
  nodes : Type u
  edges : Type v
  synapticWeight : edges → ℝ
  directed : Prop
  weighted : Prop
  connectionDensity : ℝ

def ConnectomeAdmissibleClass (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem connectome_bridge (A : AdmissibleClass) : bridgeClosed A :=
  bridge_from_admissible_class A

theorem connectome_gate (A : AdmissibleClass) : gateClosed A :=
  gate_from_admissible_class A

end NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean
end HautevilleHouse