import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesign

structure MolecularOrbitalTheoryPackage where
  hamiltonian : Prop
  waveFunction : Prop
  orbitalEnergyLevels : Prop
  homoLumoGap : Prop
  bondOrder : Prop

structure MolecularOrbitalTheoryEvidence (M : MolecularOrbitalTheoryPackage) where
  hamiltonianClosed : M.hamiltonian
  waveFunctionClosed : M.waveFunction
  orbitalEnergyLevelsClosed : M.orbitalEnergyLevels
  homoLumoGapClosed : M.homoLumoGap
  bondOrderClosed : M.bondOrder

def MolecularOrbitalTheoryClosed (M : MolecularOrbitalTheoryPackage) : Prop :=
  M.hamiltonian ∧ M.waveFunction ∧ M.orbitalEnergyLevels ∧ M.homoLumoGap ∧ M.bondOrder

theorem molecular_orbital_theory_closed_from_evidence (M : MolecularOrbitalTheoryPackage) (E : MolecularOrbitalTheoryEvidence M) :
    MolecularOrbitalTheoryClosed M := by
  exact And.intro E.hamiltonianClosed
    (And.intro E.waveFunctionClosed
      (And.intro E.orbitalEnergyLevelsClosed
        (And.intro E.homoLumoGapClosed E.bondOrderClosed)))

end ChemicalEngineeringProcessDesign
end HautevilleHouse