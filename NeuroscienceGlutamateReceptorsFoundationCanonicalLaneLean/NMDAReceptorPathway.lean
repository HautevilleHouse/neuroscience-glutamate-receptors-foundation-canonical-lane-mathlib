import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean

structure NMDAReceptorPathwayEvidence where
  calciumSignaling : Prop
  camkiiActivation : Prop
  geneExpressionRegulation : Prop
  calciumSignalingTerm : calciumSignaling
  camkiiActivationTerm : camkiiActivation
  geneExpressionRegulationTerm : geneExpressionRegulation

def NMDAReceptorPathwayClosed (E : NMDAReceptorPathwayEvidence) : Prop :=
  E.calciumSignaling ∧ E.camkiiActivation ∧ E.geneExpressionRegulation

theorem nmda_receptor_pathway_closed_from_evidence (E : NMDAReceptorPathwayEvidence) :
    NMDAReceptorPathwayClosed E := by
  exact And.intro E.calciumSignalingTerm (And.intro E.camkiiActivationTerm E.geneExpressionRegulationTerm)

end NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean
end HautevilleHouse
