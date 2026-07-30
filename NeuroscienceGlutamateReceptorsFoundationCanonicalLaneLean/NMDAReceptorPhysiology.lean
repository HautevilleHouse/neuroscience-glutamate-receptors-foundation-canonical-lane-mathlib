import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean

structure NMDAReceptorPhysiologyPackage where
  magnesiumBlock : Prop
  glycineCoAgonist : Prop
  calciumPermeability : Prop
  slowKinetics : Prop
  subunitComposition : Prop

structure NMDAReceptorPhysiologyEvidence (N : NMDAReceptorPhysiologyPackage) where
  magnesiumBlockClosed : N.magnesiumBlock
  glycineCoAgonistClosed : N.glycineCoAgonist
  calciumPermeabilityClosed : N.calciumPermeability
  slowKineticsClosed : N.slowKinetics
  subunitCompositionClosed : N.subunitComposition

def NMDAReceptorPhysiologyClosed (N : NMDAReceptorPhysiologyPackage) : Prop :=
  N.magnesiumBlock ∧ N.glycineCoAgonist ∧ N.calciumPermeability ∧ N.slowKinetics ∧ N.subunitComposition

theorem nmda_receptor_physiology_closed_from_evidence
    (N : NMDAReceptorPhysiologyPackage) (E : NMDAReceptorPhysiologyEvidence N) :
    NMDAReceptorPhysiologyClosed N := by
  exact And.intro E.magnesiumBlockClosed
    (And.intro E.glycineCoAgonistClosed
      (And.intro E.calciumPermeabilityClosed
        (And.intro E.slowKineticsClosed E.subunitCompositionClosed)))

end NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean
end HautevilleHouse