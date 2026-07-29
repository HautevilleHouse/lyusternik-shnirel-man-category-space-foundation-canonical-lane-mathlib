import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LusternikSchnirelmannCategorySpaceFoundationCanonicalLaneLean

structure DeformationRetractPackage where
  space : Type u
  subspace : Type u
  inclusion : subspace → space
  deformationRetraction : space → subspace
  homotopyContinuity : Prop
  retractionIdempotent : Prop

structure DeformationRetractEvidence (D : DeformationRetractPackage) where
  homotopyContinuityClosed : D.homotopyContinuity
  retractionIdempotentClosed : D.retractionIdempotent

def DeformationRetractClosed (D : DeformationRetractPackage) : Prop :=
  D.homotopyContinuity ∧ D.retractionIdempotent

theorem deformation_retract_closed_from_evidence
    (D : DeformationRetractPackage) (E : DeformationRetractEvidence D) :
    DeformationRetractClosed D := by
  exact And.intro E.homotopyContinuityClosed E.retractionIdempotentClosed

end LusternikSchnirelmannCategorySpaceFoundationCanonicalLaneLean
end HautevilleHouse