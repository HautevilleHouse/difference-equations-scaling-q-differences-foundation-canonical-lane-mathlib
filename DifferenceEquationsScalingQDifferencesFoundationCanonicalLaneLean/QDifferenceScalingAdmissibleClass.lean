import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesFoundationCanonicalLaneLean

structure QDifferenceScalingObject where
  q : ℕ
  carrier : Type
  qDiffOperator : carrier → carrier
  qScaling : carrier → carrier
  compatibility : qDiffOperator ∘ qScaling = qScaling ∘ qDiffOperator

structure AdmissibleClass where
  object : QDifferenceScalingObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  QDifferenceScalingClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferenceEquationsScalingQDifferencesFoundationCanonicalLaneLean
end HautevilleHouse