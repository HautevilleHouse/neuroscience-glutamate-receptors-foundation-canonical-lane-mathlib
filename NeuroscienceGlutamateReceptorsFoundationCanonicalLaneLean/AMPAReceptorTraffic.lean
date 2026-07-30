import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean

structure AMPAReceptorTrafficPackage where
  synapticDeliveryRate : Prop
  endocytosisRate : Prop
  exocytosisRate : Prop
  lateralDiffusionCoefficient : Prop
  receptorDensityAtSynapse : Prop
  traffickingRegulation : Prop

structure AMPAReceptorTrafficEvidence (A : AMPAReceptorTrafficPackage) where
  synapticDeliveryRateClosed : A.synapticDeliveryRate
  endocytosisRateClosed : A.endocytosisRate
  exocytosisRateClosed : A.exocytosisRate
  lateralDiffusionCoefficientClosed : A.lateralDiffusionCoefficient
  receptorDensityAtSynapseClosed : A.receptorDensityAtSynapse
  traffickingRegulationClosed : A.traffickingRegulation

def AMPAReceptorTrafficClosed (A : AMPAReceptorTrafficPackage) : Prop :=
  A.synapticDeliveryRate ∧ A.endocytosisRate ∧ A.exocytosisRate ∧
  A.lateralDiffusionCoefficient ∧ A.receptorDensityAtSynapse ∧ A.traffickingRegulation

theorem ampa_receptor_traffic_closed_from_evidence (A : AMPAReceptorTrafficPackage)
    (E : AMPAReceptorTrafficEvidence A) : AMPAReceptorTrafficClosed A :=
  And.intro E.synapticDeliveryRateClosed
    (And.intro E.endocytosisRateClosed
      (And.intro E.exocytosisRateClosed
        (And.intro E.lateralDiffusionCoefficientClosed
          (And.intro E.receptorDensityAtSynapseClosed E.traffickingRegulationClosed))))

end NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean
end HautevilleHouse