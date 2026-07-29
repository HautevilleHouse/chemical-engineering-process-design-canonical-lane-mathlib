import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesign

structure ThermodynamicsPackage where
  firstLaw : Prop
  secondLaw : Prop
  thirdLaw : Prop
  enthalpyBalance : Prop
  entropyGeneration : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  firstLawClosed : T.firstLaw
  secondLawClosed : T.secondLaw
  thirdLawClosed : T.thirdLaw
  enthalpyBalanceClosed : T.enthalpyBalance
  entropyGenerationClosed : T.entropyGeneration

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.firstLaw ∧ T.secondLaw ∧ T.thirdLaw ∧ T.enthalpyBalance ∧ T.entropyGeneration

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) :
    ThermodynamicsClosed T := by
  exact And.intro E.firstLawClosed
    (And.intro E.secondLawClosed
      (And.intro E.thirdLawClosed
        (And.intro E.enthalpyBalanceClosed E.entropyGenerationClosed)))

end ChemicalEngineeringProcessDesign
end HautevilleHouse