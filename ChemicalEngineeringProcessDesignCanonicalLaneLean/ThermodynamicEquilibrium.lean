import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignCanonicalLaneLean

structure ThermodynamicEquilibriumPackage where
  gibbsFreeEnergy : Type u
  equilibriumConstantThermo : Type v
  phaseEquilibrium : Prop
  vanHoffEquation : Prop
  minimumEnergyPrinciple : Prop

structure ThermodynamicEquilibriumEvidence (T : ThermodynamicEquilibriumPackage) where
  phaseEquilibriumClosed : T.phaseEquilibrium
  vanHoffEquationClosed : T.vanHoffEquation
  minimumEnergyPrincipleClosed : T.minimumEnergyPrinciple

def ThermodynamicEquilibriumClosed (T : ThermodynamicEquilibriumPackage) : Prop :=
  T.phaseEquilibrium ∧ T.vanHoffEquation ∧ T.minimumEnergyPrinciple

theorem thermodynamic_equilibrium_closed_from_evidence (T : ThermodynamicEquilibriumPackage)
    (E : ThermodynamicEquilibriumEvidence T) : ThermodynamicEquilibriumClosed T :=
  And.intro E.phaseEquilibriumClosed (And.intro E.vanHoffEquationClosed E.minimumEnergyPrincipleClosed)

end ChemicalEngineeringProcessDesignCanonicalLaneLean
end HautevilleHouse
