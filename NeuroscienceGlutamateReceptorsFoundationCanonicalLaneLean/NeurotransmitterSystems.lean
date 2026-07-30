import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean

structure GlutamateReceptorSubtype where
  name : String
  ionotropic : Bool
  metabotropic : Bool
  subunitComposition : String
  permeability : String

def ampaReceptor : GlutamateReceptorSubtype := {
  name := "AMPA"
  ionotropic := true
  metabotropic := false
  subunitComposition := "GluA1-4"
  permeability := "Na+, K+, Ca2+"
}

def nmdaReceptor : GlutamateReceptorSubtype := {
  name := "NMDA"
  ionotropic := true
  metabotropic := false
  subunitComposition := "GluN1, GluN2A-D"
  permeability := "Na+, K+, Ca2+"
}

def kainateReceptor : GlutamateReceptorSubtype := {
  name := "Kainate"
  ionotropic := true
  metabotropic := false
  subunitComposition := "GluK1-5"
  permeability := "Na+, K+"
}

def mGluRReceptor : GlutamateReceptorSubtype := {
  name := "mGluR"
  ionotropic := false
  metabotropic := true
  subunitComposition := "mGluR1-8"
  permeability := "G-protein coupled"
}

end NeuroscienceGlutamateReceptorsFoundationCanonicalLaneLean
end HautevilleHouse
