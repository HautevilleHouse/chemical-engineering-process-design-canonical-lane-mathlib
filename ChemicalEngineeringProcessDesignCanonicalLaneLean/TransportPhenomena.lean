import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignCanonicalLaneLean

structure TransportPhenomenaPackage where
  viscosityModel : Type u
  diffusivityModel : Type v
  thermalConductivityModel : Type w
  navierStokesEquation : Prop
  fickLaw : Prop
  fourierLaw : Prop

structure TransportPhenomenaEvidence (T : TransportPhenomenaPackage) where
  navierStokesEquationClosed : T.navierStokesEquation
  fickLawClosed : T.fickLaw
  fourierLawClosed : T.fourierLaw

def TransportPhenomenaClosed (T : TransportPhenomenaPackage) : Prop :=
  T.navierStokesEquation ∧ T.fickLaw ∧ T.fourierLaw

theorem transport_phenomena_closed_from_evidence (T : TransportPhenomenaPackage)
    (E : TransportPhenomenaEvidence T) : TransportPhenomenaClosed T :=
  And.intro E.navierStokesEquationClosed (And.intro E.fickLawClosed E.fourierLawClosed)

end ChemicalEngineeringProcessDesignCanonicalLaneLean
end HautevilleHouse
