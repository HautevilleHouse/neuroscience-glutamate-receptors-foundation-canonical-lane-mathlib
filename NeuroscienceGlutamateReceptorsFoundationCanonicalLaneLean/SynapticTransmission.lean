import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean

structure SynapticVesicle where
  neurotransmitter : String
  vesicleVolume : ℝ
  releaseProbability : ℝ

structure SynapticCleft where
  neurotransmitterDiffusion : ℝ → ℝ → ℝ
  receptorBinding : ℝ → ℝ
  degradationRate : ℝ

structure PostsynapticResponse where
  receptorActivation : ℝ → ℝ
  ionChannelOpening : ℝ → ℝ
  membraneDepolarization : ℝ → ℝ

def SynapticTransmissionAdmissibleClass (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem synaptic_transmission_bridge (A : AdmissibleClass) : bridgeClosed A :=
  bridge_from_admissible_class A

theorem synaptic_transmission_gate (A : AdmissibleClass) : gateClosed A :=
  gate_from_admissible_class A

end NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean
end HautevilleHouse