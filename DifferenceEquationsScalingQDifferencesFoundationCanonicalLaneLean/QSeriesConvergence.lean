import HautevilleHouse.DifferenceEquationsScalingQDifferencesFoundationCanonicalLaneLean.QDifferenceScalingFoundation

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesFoundationCanonicalLaneLean

structure QSeriesConvergencePackage {P : QDifferenceScalingPackage} where
  radiusOfConvergence : ℝ
  convergenceCriterion : Prop
  qHypergeometricSeries : Prop
  analyticContinuation : Prop

structure QSeriesConvergenceEvidence {P : QDifferenceScalingPackage}
    (C : QSeriesConvergencePackage P) where
  convergenceCriterionClosed : C.convergenceCriterion
  qHypergeometricSeriesClosed : C.qHypergeometricSeries
  analyticContinuationClosed : C.analyticContinuation

def QSeriesConvergenceClosed {P : QDifferenceScalingPackage}
    (C : QSeriesConvergencePackage P) : Prop :=
  C.convergenceCriterion ∧ C.qHypergeometricSeries ∧ C.analyticContinuation

theorem q_series_convergence_closed_from_evidence {P : QDifferenceScalingPackage}
    (C : QSeriesConvergencePackage P) (E : QSeriesConvergenceEvidence C) :
    QSeriesConvergenceClosed C := by
  exact And.intro E.convergenceCriterionClosed
    (And.intro E.qHypergeometricSeriesClosed E.analyticContinuationClosed)

end DifferenceEquationsScalingQDifferencesFoundationCanonicalLaneLean
end HautevilleHouse
