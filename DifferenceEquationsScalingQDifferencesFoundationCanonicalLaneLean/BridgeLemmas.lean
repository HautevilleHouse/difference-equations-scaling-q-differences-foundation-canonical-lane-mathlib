import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  QDifferenceScalingClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.compatibility

end DifferenceEquationsScalingQDifferencesFoundationCanonicalLaneLean
end HautevilleHouse