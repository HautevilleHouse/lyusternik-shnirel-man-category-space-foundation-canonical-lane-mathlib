import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceFoundationCanonicalLaneLean

structure CupLengthEstimatePackage {L : LyusternikShnirelCategoryPackage} (Lc : LyusternikShnirelCategoryEvidence L) where
  cupProductNonzero : Prop
  cupLengthAtLeast : Prop
  cupLengthAtLeastClosed : cupLengthAtLeast
  cupProductNonzeroClosed : cupProductNonzero

def CupLengthEstimateClosed {L : LyusternikShnirelCategoryPackage} {Lc : LyusternikShnirelCategoryEvidence L} (C : CupLengthEstimatePackage Lc) : Prop :=
  C.cupProductNonzero ∧ C.cupLengthAtLeast

theorem cup_length_estimate_closed_from_evidence {L : LyusternikShnirelCategoryPackage} {Lc : LyusternikShnirelCategoryEvidence L} (C : CupLengthEstimatePackage Lc) (E : CupLengthEstimateEvidence C) : CupLengthEstimateClosed C := by
  exact And.intro E.cupProductNonzeroClosed E.cupLengthAtLeastClosed

structure CupLengthEstimateEvidence {L : LyusternikShnirelCategoryPackage} {Lc : LyusternikShnirelCategoryEvidence L} (C : CupLengthEstimatePackage Lc) where
  cupProductNonzeroClosed : C.cupProductNonzero
  cupLengthAtLeastClosed : C.cupLengthAtLeast

end LyusternikShnirelManCategorySpaceFoundationCanonicalLaneLean
end HautevilleHouse