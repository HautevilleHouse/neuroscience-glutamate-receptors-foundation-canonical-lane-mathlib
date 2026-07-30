import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean

structure NMDAReceptorPlasticityPackage where
  voltageDependentMgBlock : Prop
  calciumPermeability : Prop
  coincidenceDetection : Prop
  spikeTimingDependentPlasticity : Prop
  bidirectionalModulation : Prop
  metaplasticityRegulation : Prop

structure NMDAReceptorPlasticityEvidence (N : NMDAReceptorPlasticityPackage) where
  voltageDependentMgBlockClosed : N.voltageDependentMgBlock
  calciumPermeabilityClosed : N.calciumPermeability
  coincidenceDetectionClosed : N.coincidenceDetection
  spikeTimingDependentPlasticityClosed : N.spikeTimingDependentPlasticity
  bidirectionalModulationClosed : N.bidirectionalModulation
  metaplasticityRegulationClosed : N.metaplasticityRegulation

def NMDAReceptorPlasticityClosed (N : NMDAReceptorPlasticityPackage) : Prop :=
  N.voltageDependentMgBlock ∧ N.calciumPermeability ∧ N.coincidenceDetection ∧
  N.spikeTimingDependentPlasticity ∧ N.bidirectionalModulation ∧ N.metaplasticityRegulation

theorem nmda_receptor_plasticity_closed_from_evidence (N : NMDAReceptorPlasticityPackage)
    (E : NMDAReceptorPlasticityEvidence N) : NMDAReceptorPlasticityClosed N :=
  And.intro E.voltageDependentMgBlockClosed
    (And.intro E.calciumPermeabilityClosed
      (And.intro E.coincidenceDetectionClosed
        (And.intro E.spikeTimingDependentPlasticityClosed
          (And.intro E.bidirectionalModulationClosed E.metaplasticityRegulationClosed))))

end NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean
end HautevilleHouse