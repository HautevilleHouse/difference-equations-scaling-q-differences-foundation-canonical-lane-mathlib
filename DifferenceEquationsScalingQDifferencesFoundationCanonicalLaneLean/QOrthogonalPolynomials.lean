import HautevilleHouse.DifferenceEquationsScalingQDifferencesFoundationCanonicalLaneLean.QIntegralRepresentation

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesFoundationCanonicalLaneLean

structure QOrthogonalPolynomialPackage {P : QDifferenceScalingPackage}
    {C : QSeriesConvergencePackage P} {I : QIntegralRepresentationPackage C} where
  threeTermRecurrence : Prop
  christoffelDarboux : Prop
  zerosInterlacing : Prop
  weightFunction : Prop

structure QOrthogonalPolynomialEvidence {P : QDifferenceScalingPackage}
    {C : QSeriesConvergencePackage P} {I : QIntegralRepresentationPackage C}
    (O : QOrthogonalPolynomialPackage I) where
  threeTermRecurrenceClosed : O.threeTermRecurrence
  christoffelDarbouxClosed : O.christoffelDarboux
  zerosInterlacingClosed : O.zerosInterlacing
  weightFunctionClosed : O.weightFunction

def QOrthogonalPolynomialClosed {P : QDifferenceScalingPackage}
    {C : QSeriesConvergencePackage P} {I : QIntegralRepresentationPackage C}
    (O : QOrthogonalPolynomialPackage I) : Prop :=
  O.threeTermRecurrence ∧ O.christoffelDarboux ∧
  O.zerosInterlacing ∧ O.weightFunction

theorem q_orthogonal_polynomial_closed_from_evidence {P : QDifferenceScalingPackage}
    {C : QSeriesConvergencePackage P} {I : QIntegralRepresentationPackage C}
    (O : QOrthogonalPolynomialPackage I) (E : QOrthogonalPolynomialEvidence O) :
    QOrthogonalPolynomialClosed O := by
  exact And.intro E.threeTermRecurrenceClosed
    (And.intro E.christoffelDarbouxClosed
      (And.intro E.zerosInterlacingClosed E.weightFunctionClosed))

end DifferenceEquationsScalingQDifferencesFoundationCanonicalLaneLean
end HautevilleHouse
