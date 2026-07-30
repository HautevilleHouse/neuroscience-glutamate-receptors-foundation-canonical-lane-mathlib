import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean

def ConstrainedGlutamateReceptorsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_glutamate_receptors_endgame (A : AdmissibleClass) :
    ConstrainedGlutamateReceptorsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean
end HautevilleHouse