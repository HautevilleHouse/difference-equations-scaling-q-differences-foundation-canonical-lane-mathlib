import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesFoundationCanonicalLaneLean

def ConstrainedQDifferenceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_q_difference_endgame (A : AdmissibleClass) :
    ConstrainedQDifferenceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferenceEquationsScalingQDifferencesFoundationCanonicalLaneLean
end HautevilleHouse