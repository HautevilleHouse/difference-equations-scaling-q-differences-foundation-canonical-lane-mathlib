import HautevilleHouse.DifferenceEquationsScalingQDifferencesFoundationCanonicalLaneLean.QSeriesConvergence

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesFoundationCanonicalLaneLean

structure QIntegralRepresentationPackage {P : QDifferenceScalingPackage}
    {C : QSeriesConvergencePackage P} where
  qBetaIntegral : Prop
  contourRepresentation : Prop
  qGammaFunctionDefined : Prop
  jacobiThetaFunction : Prop

structure QIntegralRepresentationEvidence {P : QDifferenceScalingPackage}
    {C : QSeriesConvergencePackage P}
    (I : QIntegralRepresentationPackage C) where
  qBetaIntegralClosed : I.qBetaIntegral
  contourRepresentationClosed : I.contourRepresentation
  qGammaFunctionDefinedClosed : I.qGammaFunctionDefined
  jacobiThetaFunctionClosed : I.jacobiThetaFunction

def QIntegralRepresentationClosed {P : QDifferenceScalingPackage}
    {C : QSeriesConvergencePackage P}
    (I : QIntegralRepresentationPackage C) : Prop :=
  I.qBetaIntegral ∧ I.contourRepresentation ∧
  I.qGammaFunctionDefined ∧ I.jacobiThetaFunction

theorem q_integral_representation_closed_from_evidence {P : QDifferenceScalingPackage}
    {C : QSeriesConvergencePackage P}
    (I : QIntegralRepresentationPackage C) (E : QIntegralRepresentationEvidence I) :
    QIntegralRepresentationClosed I := by
  exact And.intro E.qBetaIntegralClosed
    (And.intro E.contourRepresentationClosed
      (And.intro E.qGammaFunctionDefinedClosed E.jacobiThetaFunctionClosed))

end DifferenceEquationsScalingQDifferencesFoundationCanonicalLaneLean
end HautevilleHouse
