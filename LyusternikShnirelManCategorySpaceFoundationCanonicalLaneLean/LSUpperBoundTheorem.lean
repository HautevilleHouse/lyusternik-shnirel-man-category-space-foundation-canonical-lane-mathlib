import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelmanCategorySpaceFoundationCanonicalLaneLean

structure LSUpperBoundTheoremPackage {F : CategorySpaceFoundationPackage}
    {C : CoveringDimensionPackage F} {L : CupLengthPackage C} where
  cupLengthLeDimension : L.cupLengthValue ≤ C.dimensionBound
  cupLengthLeCategory : Prop
  dimensionLeCategory : Prop
  inequalityChainClosed : Prop

structure LSUpperBoundTheoremEvidence {F : CategorySpaceFoundationPackage}
    {C : CoveringDimensionPackage F} {L : CupLengthPackage C}
    (P : LSUpperBoundTheoremPackage F C L) where
  cupLengthLeDimensionClosed : P.cupLengthLeDimension
  cupLengthLeCategoryClosed : P.cupLengthLeCategory
  dimensionLeCategoryClosed : P.dimensionLeCategory
  inequalityChainClosed : P.inequalityChainClosed

def LSUpperBoundTheoremClosed {F : CategorySpaceFoundationPackage}
    {C : CoveringDimensionPackage F} {L : CupLengthPackage C}
    (P : LSUpperBoundTheoremPackage F C L) : Prop :=
  P.cupLengthLeDimension ∧ P.cupLengthLeCategory ∧
  P.dimensionLeCategory ∧ P.inequalityChainClosed

theorem ls_upper_bound_theorem_closed_from_evidence
    {F : CategorySpaceFoundationPackage} {C : CoveringDimensionPackage F}
    {L : CupLengthPackage C} (P : LSUpperBoundTheoremPackage F C L)
    (E : LSUpperBoundTheoremEvidence P) : LSUpperBoundTheoremClosed P := by
  exact And.intro E.cupLengthLeDimensionClosed
    (And.intro E.cupLengthLeCategoryClosed
      (And.intro E.dimensionLeCategoryClosed E.inequalityChainClosed))

end LyusternikShnirelmanCategorySpaceFoundationCanonicalLaneLean
end HautevilleHouse