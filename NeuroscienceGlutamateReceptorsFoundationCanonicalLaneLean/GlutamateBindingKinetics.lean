import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean

structure GlutamateBindingKineticsPackage where
  glutamateConcentration : Prop
  receptorAffinity : Prop
  bindingOnRate : Prop
  unbindingOffRate : Prop
  channelOpeningProbability : Prop
  desensitizationRate : Prop

structure GlutamateBindingKineticsEvidence (G : GlutamateBindingKineticsPackage) where
  glutamateConcentrationClosed : G.glutamateConcentration
  receptorAffinityClosed : G.receptorAffinity
  bindingOnRateClosed : G.bindingOnRate
  unbindingOffRateClosed : G.unbindingOffRate
  channelOpeningProbabilityClosed : G.channelOpeningProbability
  desensitizationRateClosed : G.desensitizationRate

def GlutamateBindingKineticsClosed (G : GlutamateBindingKineticsPackage) : Prop :=
  G.glutamateConcentration ∧ G.receptorAffinity ∧ G.bindingOnRate ∧
  G.unbindingOffRate ∧ G.channelOpeningProbability ∧ G.desensitizationRate

theorem glutamate_binding_kinetics_closed_from_evidence (G : GlutamateBindingKineticsPackage)
    (E : GlutamateBindingKineticsEvidence G) : GlutamateBindingKineticsClosed G :=
  And.intro E.glutamateConcentrationClosed
    (And.intro E.receptorAffinityClosed
      (And.intro E.bindingOnRateClosed
        (And.intro E.unbindingOffRateClosed
          (And.intro E.channelOpeningProbabilityClosed E.desensitizationRateClosed))))

end NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean
end HautevilleHouse