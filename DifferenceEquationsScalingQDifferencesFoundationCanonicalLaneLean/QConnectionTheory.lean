import HautevilleHouse.DifferenceEquationsScalingQDifferencesFoundationCanonicalLaneLean.QOrthogonalPolynomials

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesFoundationCanonicalLaneLean

structure QConnectionPackage {P : QDifferenceScalingPackage}
    {C : QSeriesConvergencePackage P} {I : QIntegralRepresentationPackage C}
    {O : QOrthogonalPolynomialPackage I} where
  qHypergeometricConnection : Prop
  bilateralSeries : Prop
  contiguousRelations : Prop
  transformationFormulas : Prop

structure QConnectionEvidence {P : QDifferenceScalingPackage}
    {C : QSeriesConvergencePackage P} {I : QIntegralRepresentationPackage C}
    {O : QOrthogonalPolynomialPackage I}
    (K : QConnectionPackage O) where
  qHypergeometricConnectionClosed : K.qHypergeometricConnection
  bilateralSeriesClosed : K.bilateralSeries
  contiguousRelationsClosed : K.contiguousRelations
  transformationFormulasClosed : K.transformationFormulas

def QConnectionClosed {P : QDifferenceScalingPackage}
    {C : QSeriesConvergencePackage P} {I : QIntegralRepresentationPackage C}
    {O : QOrthogonalPolynomialPackage I}
    (K : QConnectionPackage O) : Prop :=
  K.qHypergeometricConnection ∧ K.bilateralSeries ∧
  K.contiguousRelations ∧ K.transformationFormulas

theorem q_connection_closed_from_evidence {P : QDifferenceScalingPackage}
    {C : QSeriesConvergencePackage P} {I : QIntegralRepresentationPackage C}
    {O : QOrthogonalPolynomialPackage I}
    (K : QConnectionPackage O) (E : QConnectionEvidence K) :
    QConnectionClosed K := by
  exact And.intro E.qHypergeometricConnectionClosed
    (And.intro E.bilateralSeriesClosed
      (And.intro E.contiguousRelationsClosed E.transformationFormulasClosed))

end DifferenceEquationsScalingQDifferencesFoundationCanonicalLaneLean
end HautevilleHouse
