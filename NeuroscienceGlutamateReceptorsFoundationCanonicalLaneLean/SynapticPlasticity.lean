import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean

structure SynapticPlasticityPackage where
  ltpInduction : Prop
  ltdInduction : Prop
  calciumDependence : Prop
  receptorTrafficking : Prop

structure SynapticPlasticityEvidence (S : SynapticPlasticityPackage) where
  ltpInductionClosed : S.ltpInduction
  ltdInductionClosed : S.ltdInduction
  calciumDependenceClosed : S.calciumDependence
  receptorTraffickingClosed : S.receptorTrafficking

def SynapticPlasticityClosed (S : SynapticPlasticityPackage) : Prop :=
  S.ltpInduction ∧ S.ltdInduction ∧ S.calciumDependence ∧ S.receptorTrafficking

theorem synaptic_plasticity_closed_from_evidence
    (S : SynapticPlasticityPackage) (E : SynapticPlasticityEvidence S) :
    SynapticPlasticityClosed S := by
  exact And.intro E.ltpInductionClosed
    (And.intro E.ltdInductionClosed
      (And.intro E.calciumDependenceClosed E.receptorTraffickingClosed))

end NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean
end HautevilleHouse