import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelmanCategorySpaceFoundationCanonicalLaneLean

structure CoveringDimensionPackage (F : CategorySpaceFoundationPackage) where
  openCoverIndex : Nat
  refinedCoverExists : Prop
  dimensionBound : Prop
  nerveComplexDimension : Prop

structure CoveringDimensionEvidence {F : CategorySpaceFoundationPackage}
    (C : CoveringDimensionPackage F) where
  openCoverIndexClosed : C.openCoverIndex
  refinedCoverExistsClosed : C.refinedCoverExists
  dimensionBoundClosed : C.dimensionBound
  nerveComplexDimensionClosed : C.nerveComplexDimension

def CoveringDimensionClosed {F : CategorySpaceFoundationPackage}
    (C : CoveringDimensionPackage F) : Prop :=
  C.openCoverIndex ∧ C.refinedCoverExists ∧
  C.dimensionBound ∧ C.nerveComplexDimension

theorem covering_dimension_closed_from_evidence
    {F : CategorySpaceFoundationPackage} (C : CoveringDimensionPackage F)
    (E : CoveringDimensionEvidence C) : CoveringDimensionClosed C := by
  exact And.intro E.openCoverIndexClosed
    (And.intro E.refinedCoverExistsClosed
      (And.intro E.dimensionBoundClosed E.nerveComplexDimensionClosed))

end LyusternikShnirelmanCategorySpaceFoundationCanonicalLaneLean
end HautevilleHouse