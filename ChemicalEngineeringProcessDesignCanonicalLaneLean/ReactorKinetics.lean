import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignCanonicalLaneLean

structure ReactionKineticsPackage where
  rateExpression : Prop
  activationEnergy : Prop
  reactionOrder : Prop
  equilibriumConstant : Prop
  temperatureDependence : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateExpressionClosed : R.rateExpression
  activationEnergyClosed : R.activationEnergy
  reactionOrderClosed : R.reactionOrder
  equilibriumConstantClosed : R.equilibriumConstant
  temperatureDependenceClosed : R.temperatureDependence

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.rateExpression ∧ R.activationEnergy ∧ R.reactionOrder ∧ R.equilibriumConstant ∧ R.temperatureDependence

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) : ReactionKineticsClosed R := by
  exact And.intro E.rateExpressionClosed
    (And.intro E.activationEnergyClosed
      (And.intro E.reactionOrderClosed
        (And.intro E.equilibriumConstantClosed E.temperatureDependenceClosed)))

end ChemicalEngineeringProcessDesignCanonicalLaneLean
end HautevilleHouse
