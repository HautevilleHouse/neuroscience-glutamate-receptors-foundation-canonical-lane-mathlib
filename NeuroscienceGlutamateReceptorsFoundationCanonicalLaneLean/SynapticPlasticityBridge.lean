import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean

structure SynapticPlasticityBridgePackage where
  hebbianMechanism : Prop
  spikeTimingDependentPlasticity : Prop
  hebbianMechanismTerm : hebbianMechanism
  spikeTimingDependentPlasticityTerm : spikeTimingDependentPlasticity

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SynapticPlasticityBridgePackage.hebbianMechanism (by exact { hebbianMechanism := True, spikeTimingDependentPlasticity := True, hebbianMechanismTerm := True.intro, spikeTimingDependentPlasticityTerm := True.intro })

end NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean
end HautevilleHouse
