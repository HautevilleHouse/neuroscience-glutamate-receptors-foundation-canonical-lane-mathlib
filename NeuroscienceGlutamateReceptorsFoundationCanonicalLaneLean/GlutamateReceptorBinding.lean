import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean

structure GlutamateReceptorBindingPackage where
  receptorType : Type u
  ligandType : Type v
  bindingAffinity : Prop
  agonistActivation : Prop
  antagonistInhibition : Prop
  bindingKinetics : Prop

structure GlutamateReceptorBindingEvidence (G : GlutamateReceptorBindingPackage) where
  bindingAffinityClosed : G.bindingAffinity
  agonistActivationClosed : G.agonistActivation
  antagonistInhibitionClosed : G.antagonistInhibition
  bindingKineticsClosed : G.bindingKinetics

def GlutamateReceptorBindingClosed (G : GlutamateReceptorBindingPackage) : Prop :=
  G.bindingAffinity ∧ G.agonistActivation ∧ G.antagonistInhibition ∧ G.bindingKinetics

theorem glutamate_receptor_binding_closed_from_evidence
    (G : GlutamateReceptorBindingPackage) (E : GlutamateReceptorBindingEvidence G) :
    GlutamateReceptorBindingClosed G := by
  exact And.intro E.bindingAffinityClosed
    (And.intro E.agonistActivationClosed
      (And.intro E.antagonistInhibitionClosed E.bindingKineticsClosed))

end NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean
end HautevilleHouse