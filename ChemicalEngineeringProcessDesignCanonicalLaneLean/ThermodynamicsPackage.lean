import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignCanonicalLaneLean

structure ThermodynamicsPackage where
  firstLaw : Prop
  secondLaw : Prop
  gibbsFreeEnergy : Prop
  phaseEquilibrium : Prop
  enthalpyBalance : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  firstLawClosed : T.firstLaw
  secondLawClosed : T.secondLaw
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  phaseEquilibriumClosed : T.phaseEquilibrium
  enthalpyBalanceClosed : T.enthalpyBalance

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.firstLaw ∧ T.secondLaw ∧ T.gibbsFreeEnergy ∧ T.phaseEquilibrium ∧ T.enthalpyBalance

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) : ThermodynamicsClosed T := by
  exact And.intro E.firstLawClosed
    (And.intro E.secondLawClosed
      (And.intro E.gibbsFreeEnergyClosed
        (And.intro E.phaseEquilibriumClosed E.enthalpyBalanceClosed)))

end ChemicalEngineeringProcessDesignCanonicalLaneLean
end HautevilleHouse
