import LyusternikShnirelManCategorySpaceFoundationCanonicalLaneLean.LSProductTheorem

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceFoundationCanonicalLaneLean

structure CupLengthEstimatePackage where
  space : LSCategorySpace
  cupLength : Nat
  categoryLowerBound : Prop
  cupLengthDefined : Prop
  categoryLowerBoundTerm : categoryLowerBound
  cupLengthDefinedTerm : cupLengthDefined

structure CupLengthEstimateEvidence (C : CupLengthEstimatePackage) where
  categoryLowerBoundClosed : C.categoryLowerBound
  cupLengthDefinedClosed : C.cupLengthDefined

def CupLengthEstimateClosed (C : CupLengthEstimatePackage) : Prop :=
  C.categoryLowerBound ∧ C.cupLengthDefined

theorem cup_length_estimate_closed_from_evidence
    (C : CupLengthEstimatePackage) (E : CupLengthEstimateEvidence C) :
    CupLengthEstimateClosed C := by
  exact And.intro E.categoryLowerBoundClosed E.cupLengthDefinedClosed

end LyusternikShnirelManCategorySpaceFoundationCanonicalLaneLean
end HautevilleHouse