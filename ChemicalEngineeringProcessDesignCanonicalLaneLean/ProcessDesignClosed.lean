import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignCanonicalLaneLean

structure ProcessDesignObject where
  kinetics : ReactionKineticsPackage
  kineticsEvidence : ReactionKineticsEvidence kinetics
  orbital : MolecularOrbitalTheoryPackage
  orbitalEvidence : MolecularOrbitalTheoryEvidence orbital
  thermo : ThermodynamicsPackage
  thermoEvidence : ThermodynamicsEvidence thermo
  equilibrium : ChemicalEquilibriumPackage
  equilibriumEvidence : ChemicalEquilibriumEvidence equilibrium

def ProcessDesignClosed (P : ProcessDesignObject) : Prop :=
  ReactionKineticsClosed P.kinetics ∧
  MolecularOrbitalTheoryClosed P.orbital ∧
  ThermodynamicsClosed P.thermo ∧
  ChemicalEquilibriumClosed P.equilibrium

theorem process_design_closed_from_evidence (P : ProcessDesignObject) :
    ProcessDesignClosed P := by
  exact And.intro (reaction_kinetics_closed_from_evidence P.kinetics P.kineticsEvidence)
    (And.intro (molecular_orbital_theory_closed_from_evidence P.orbital P.orbitalEvidence)
      (And.intro (thermodynamics_closed_from_evidence P.thermo P.thermoEvidence)
        (chemical_equilibrium_closed_from_evidence P.equilibrium P.equilibriumEvidence)))

end ChemicalEngineeringProcessDesignCanonicalLaneLean
end HautevilleHouse