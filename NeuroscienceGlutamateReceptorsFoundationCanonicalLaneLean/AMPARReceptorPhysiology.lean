import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean

structure AMPARReceptorPhysiologyPackage where
  fastKinetics : Prop
  calciumImpermeability : Prop
  flipFlopSplicing : Prop
  subunitComposition : Prop

structure AMPARReceptorPhysiologyEvidence (A : AMPARReceptorPhysiologyPackage) where
  fastKineticsClosed : A.fastKinetics
  calciumImpermeabilityClosed : A.calciumImpermeability
  flipFlopSplicingClosed : A.flipFlopSplicing
  subunitCompositionClosed : A.subunitComposition

def AMPARReceptorPhysiologyClosed (A : AMPARReceptorPhysiologyPackage) : Prop :=
  A.fastKinetics ∧ A.calciumImpermeability ∧ A.flipFlopSplicing ∧ A.subunitComposition

theorem ampar_receptor_physiology_closed_from_evidence
    (A : AMPARReceptorPhysiologyPackage) (E : AMPARReceptorPhysiologyEvidence A) :
    AMPARReceptorPhysiologyClosed A := by
  exact And.intro E.fastKineticsClosed
    (And.intro E.calciumImpermeabilityClosed
      (And.intro E.flipFlopSplicingClosed E.subunitCompositionClosed))

end NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean
end HautevilleHouse