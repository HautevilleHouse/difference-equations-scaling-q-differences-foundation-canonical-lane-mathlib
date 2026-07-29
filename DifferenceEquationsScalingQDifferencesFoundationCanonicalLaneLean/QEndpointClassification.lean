import HautevilleHouse.DifferenceEquationsScalingQDifferencesFoundationCanonicalLaneLean.QConnectionTheory

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesFoundationCanonicalLaneLean

structure QEndpointClassificationPackage {P : QDifferenceScalingPackage}
    {C : QSeriesConvergencePackage P} {I : QIntegralRepresentationPackage C}
    {O : QOrthogonalPolynomialPackage I} {K : QConnectionPackage O} where
  limitAtBoundary : Prop
  asymptoticExpansion : Prop
  stokesPhenomenon : Prop
  monodromyMatrices : Prop

structure QEndpointClassificationEvidence {P : QDifferenceScalingPackage}
    {C : QSeriesConvergencePackage P} {I : QIntegralRepresentationPackage C}
    {O : QOrthogonalPolynomialPackage I} {K : QConnectionPackage O}
    (E : QEndpointClassificationPackage K) where
  limitAtBoundaryClosed : E.limitAtBoundary
  asymptoticExpansionClosed : E.asymptoticExpansion
  stokesPhenomenonClosed : E.stokesPhenomenon
  monodromyMatricesClosed : E.monodromyMatrices

def QEndpointClassificationClosed {P : QDifferenceScalingPackage}
    {C : QSeriesConvergencePackage P} {I : QIntegralRepresentationPackage C}
    {O : QOrthogonalPolynomialPackage I} {K : QConnectionPackage O}
    (E : QEndpointClassificationPackage K) : Prop :=
  E.limitAtBoundary ∧ E.asymptoticExpansion ∧
  E.stokesPhenomenon ∧ E.monodromyMatrices

theorem q_endpoint_classification_closed_from_evidence {P : QDifferenceScalingPackage}
    {C : QSeriesConvergencePackage P} {I : QIntegralRepresentationPackage C}
    {O : QOrthogonalPolynomialPackage I} {K : QConnectionPackage O}
    (E : QEndpointClassificationPackage K) (Ev : QEndpointClassificationEvidence E) :
    QEndpointClassificationClosed E := by
  exact And.intro Ev.limitAtBoundaryClosed
    (And.intro Ev.asymptoticExpansionClosed
      (And.intro Ev.stokesPhenomenonClosed Ev.monodromyMatricesClosed))

end DifferenceEquationsScalingQDifferencesFoundationCanonicalLaneLean
end HautevilleHouse
