import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LusternikSchnirelmannCategorySpaceFoundationCanonicalLaneLean

structure CoveringDimensionPackage where
  space : Type u
  coveringDimension : Nat
  openCoverExists : Prop
  refinementProperty : Prop
  dimensionBound : Prop

structure CoveringDimensionEvidence (C : CoveringDimensionPackage) where
  openCoverExistsClosed : C.openCoverExists
  refinementPropertyClosed : C.refinementProperty
  dimensionBoundClosed : C.dimensionBound

def CoveringDimensionClosed (C : CoveringDimensionPackage) : Prop :=
  C.openCoverExists ∧ C.refinementProperty ∧ C.dimensionBound

theorem covering_dimension_closed_from_evidence
    (C : CoveringDimensionPackage) (E : CoveringDimensionEvidence C) :
    CoveringDimensionClosed C := by
  exact And.intro E.openCoverExistsClosed
    (And.intro E.refinementPropertyClosed E.dimensionBoundClosed)

end LusternikSchnirelmannCategorySpaceFoundationCanonicalLaneLean
end HautevilleHouse