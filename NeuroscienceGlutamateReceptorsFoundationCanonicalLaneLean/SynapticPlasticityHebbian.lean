import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean

structure HebbianPlasticityRule where
  hebbian : Prop
  stdp : Prop
  spikeTiming : Prop

structure SynapticPlasticityPackage where
  ltp : HebbianPlasticityRule
  ltd : HebbianPlasticityRule
  nmdaDependence : Prop
  ampaTrafficking : Prop

structure SynapticPlasticityEvidence (P : SynapticPlasticityPackage) where
  ltpHebbianClosed : P.ltp.hebbian ∧ P.ltp.stdp
  ltdHebbianClosed : P.ltd.hebbian ∧ P.ltd.stdp
  nmdaDependenceClosed : P.nmdaDependence
  ampaTraffickingClosed : P.ampaTrafficking

def SynapticPlasticityClosed (P : SynapticPlasticityPackage) : Prop :=
  (P.ltp.hebbian ∧ P.ltp.stdp) ∧
  (P.ltd.hebbian ∧ P.ltd.stdp) ∧
  P.nmdaDependence ∧
  P.ampaTrafficking

theorem synaptic_plasticity_closed_from_evidence (P : SynapticPlasticityPackage) (E : SynapticPlasticityEvidence P) :
    SynapticPlasticityClosed P := by
  exact And.intro E.ltpHebbianClosed (And.intro E.ltdHebbianClosed (And.intro E.nmdaDependenceClosed E.ampaTraffickingClosed))

end HautevilleHouse
end NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean