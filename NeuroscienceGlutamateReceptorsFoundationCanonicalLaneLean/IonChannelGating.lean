import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean

structure IonChannelGatingPackage where
  channelType : Type u
  voltageDependence : Prop
  ligandDependence : Prop
  gatingKinetics : Prop
  ionSelectivity : Prop

structure IonChannelGatingEvidence (I : IonChannelGatingPackage) where
  voltageDependenceClosed : I.voltageDependence
  ligandDependenceClosed : I.ligandDependence
  gatingKineticsClosed : I.gatingKinetics
  ionSelectivityClosed : I.ionSelectivity

def IonChannelGatingClosed (I : IonChannelGatingPackage) : Prop :=
  I.voltageDependence ∧ I.ligandDependence ∧ I.gatingKinetics ∧ I.ionSelectivity

theorem ion_channel_gating_closed_from_evidence
    (I : IonChannelGatingPackage) (E : IonChannelGatingEvidence I) :
    IonChannelGatingClosed I := by
  exact And.intro E.voltageDependenceClosed
    (And.intro E.ligandDependenceClosed
      (And.intro E.gatingKineticsClosed E.ionSelectivityClosed))

end NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean
end HautevilleHouse