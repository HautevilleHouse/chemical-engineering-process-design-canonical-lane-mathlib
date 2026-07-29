import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringProcessDesign.ReactionKinetics
import HautevilleHouse.ChemicalEngineeringProcessDesign.MolecularOrbitalTheory
import HautevilleHouse.ChemicalEngineeringProcessDesign.Thermodynamics
import HautevilleHouse.ChemicalEngineeringProcessDesign.ChemicalEquilibrium

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesign

structure ProcessDesignPackage (R : ReactionKineticsPackage) (M : MolecularOrbitalTheoryPackage) (T : ThermodynamicsPackage) (C : ChemicalEquilibriumPackage) where
  reactorDesign : Prop
  separatorDesign : Prop
  heatIntegration : Prop
  processControl : Prop

structure ProcessDesignEvidence {R : ReactionKineticsPackage} {M : MolecularOrbitalTheoryPackage} {T : ThermodynamicsPackage} {C : ChemicalEquilibriumPackage}
    (P : ProcessDesignPackage R M T C) where
  reactorDesignClosed : P.reactorDesign
  separatorDesignClosed : P.separatorDesign
  heatIntegrationClosed : P.heatIntegration
  processControlClosed : P.processControl

def ProcessDesignClosed {R : ReactionKineticsPackage} {M : MolecularOrbitalTheoryPackage} {T : ThermodynamicsPackage} {C : ChemicalEquilibriumPackage}
    (P : ProcessDesignPackage R M T C) : Prop :=
  P.reactorDesign ∧ P.separatorDesign ∧ P.heatIntegration ∧ P.processControl

theorem process_design_closed_from_evidence {R : ReactionKineticsPackage} {M : MolecularOrbitalTheoryPackage} {T : ThermodynamicsPackage} {C : ChemicalEquilibriumPackage}
    (P : ProcessDesignPackage R M T C) (E : ProcessDesignEvidence P) : ProcessDesignClosed P := by
  exact And.intro E.reactorDesignClosed
    (And.intro E.separatorDesignClosed
      (And.intro E.heatIntegrationClosed E.processControlClosed))

end ChemicalEngineeringProcessDesign
end HautevilleHouse