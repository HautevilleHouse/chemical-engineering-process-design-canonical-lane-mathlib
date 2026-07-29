import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignCanonicalLaneLean

structure ReactionKineticsPackage where
  rateConstant : Type u
  activationEnergy : Type v
  arrheniusLaw : Prop
  rateExpression : Prop
  equilibriumConstant : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  arrheniusLawClosed : R.arrheniusLaw
  rateExpressionClosed : R.rateExpression
  equilibriumConstantClosed : R.equilibriumConstant

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.arrheniusLaw ∧ R.rateExpression ∧ R.equilibriumConstant

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage)
    (E : ReactionKineticsEvidence R) : ReactionKineticsClosed R :=
  And.intro E.arrheniusLawClosed (And.intro E.rateExpressionClosed E.equilibriumConstantClosed)

end ChemicalEngineeringProcessDesignCanonicalLaneLean
end HautevilleHouse
