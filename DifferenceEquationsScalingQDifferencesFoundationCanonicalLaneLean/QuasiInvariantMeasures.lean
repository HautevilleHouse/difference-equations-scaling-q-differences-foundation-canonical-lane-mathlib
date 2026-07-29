import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesFoundationCanonicalLaneLean

structure QuasiInvariantMeasure (A : AdmissibleClass) where
  measure : Type
  scalingMeasure : A.object.qScaling → measure → measure
  qDiffInvariance : Prop
  scalingInvariant : Prop
  qDiffInvarianceClosed : qDiffInvariance
  scalingInvariantClosed : scalingInvariant

def QuasiInvariantClosed (A : AdmissibleClass) (M : QuasiInvariantMeasure A) : Prop :=
  M.qDiffInvariance ∧ M.scalingInvariant

theorem quasi_invariant_closed_from_evidence (A : AdmissibleClass) (M : QuasiInvariantMeasure A) :
    QuasiInvariantClosed A M := by
  exact And.intro M.qDiffInvarianceClosed M.scalingInvariantClosed

end DifferenceEquationsScalingQDifferencesFoundationCanonicalLaneLean
end HautevilleHouse