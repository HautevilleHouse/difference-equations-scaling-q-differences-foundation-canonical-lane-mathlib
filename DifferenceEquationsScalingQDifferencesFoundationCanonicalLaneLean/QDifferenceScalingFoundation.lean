import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesFoundationCanonicalLaneLean

structure QDifferenceScalingFoundation where
  q : ℕ
  qDifferenceOperator : Type
  qScalingOperator : Type
  scalingRelation : qDifferenceOperator → qScalingOperator → Prop
  qSeries : Type
  qIntegral : Type
  qDifferenceClosed : Prop

def QDifferenceScalingClosed (F : QDifferenceScalingFoundation) : Prop :=
  F.qDifferenceClosed

structure QDifferenceScalingEvidence (F : QDifferenceScalingFoundation) where
  scalingRelationClosed : F.scalingRelation
  qDifferenceClosedFromEvidence : F.qDifferenceClosed

theorem q_difference_scaling_closed_from_evidence (F : QDifferenceScalingFoundation) (E : QDifferenceScalingEvidence F) :
    QDifferenceScalingClosed F := by
  exact E.qDifferenceClosedFromEvidence

end DifferenceEquationsScalingQDifferencesFoundationCanonicalLaneLean
end HautevilleHouse