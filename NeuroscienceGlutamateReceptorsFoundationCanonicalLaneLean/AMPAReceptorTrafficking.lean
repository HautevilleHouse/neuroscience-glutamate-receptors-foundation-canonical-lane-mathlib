import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean

structure AMPAReceptorTraffickingEvidence where
  exocytosisInduction : Prop
  endocytosisSuppression : Prop
  synapticReceptorNumberIncrease : Prop
  exocytosisInductionTerm : exocytosisInduction
  endocytosisSuppressionTerm : endocytosisSuppression
  synapticReceptorNumberIncreaseTerm : synapticReceptorNumberIncrease

def AMPAReceptorTraffickingClosed (E : AMPAReceptorTraffickingEvidence) : Prop :=
  E.exocytosisInduction ∧ E.endocytosisSuppression ∧ E.synapticReceptorNumberIncrease

theorem ampa_receptor_trafficking_closed_from_evidence (E : AMPAReceptorTraffickingEvidence) :
    AMPAReceptorTraffickingClosed E := by
  exact And.intro E.exocytosisInductionTerm (And.intro E.endocytosisSuppressionTerm E.synapticReceptorNumberIncreaseTerm)

end NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean
end HautevilleHouse
