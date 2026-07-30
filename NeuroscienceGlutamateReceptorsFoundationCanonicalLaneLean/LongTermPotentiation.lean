import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean

structure LongTermPotentiationPackage where
  nmdaReceptorActivation : Prop
  calciumInflux : Prop
  camkiiActivation : Prop
  ampaReceptorInsertion : Prop
  synapticStrengthIncrease : Prop
  persistenceMechanism : Prop

structure LongTermPotentiationEvidence (L : LongTermPotentiationPackage) where
  nmdaReceptorActivationClosed : L.nmdaReceptorActivation
  calciumInfluxClosed : L.calciumInflux
  camkiiActivationClosed : L.camkiiActivation
  ampaReceptorInsertionClosed : L.ampaReceptorInsertion
  synapticStrengthIncreaseClosed : L.synapticStrengthIncrease
  persistenceMechanismClosed : L.persistenceMechanism

def LongTermPotentiationClosed (L : LongTermPotentiationPackage) : Prop :=
  L.nmdaReceptorActivation ∧ L.calciumInflux ∧ L.camkiiActivation ∧
  L.ampaReceptorInsertion ∧ L.synapticStrengthIncrease ∧ L.persistenceMechanism

theorem long_term_potentiation_closed_from_evidence (L : LongTermPotentiationPackage)
    (E : LongTermPotentiationEvidence L) : LongTermPotentiationClosed L :=
  And.intro E.nmdaReceptorActivationClosed
    (And.intro E.calciumInfluxClosed
      (And.intro E.camkiiActivationClosed
        (And.intro E.ampaReceptorInsertionClosed
          (And.intro E.synapticStrengthIncreaseClosed E.persistenceMechanismClosed))))

end NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean
end HautevilleHouse