import LyusternikShnirelManCategorySpaceFoundationCanonicalLaneLean.CofibrationSequence

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceFoundationCanonicalLaneLean

structure LSProductTheoremPackage where
  spaceA : LSCategorySpace
  spaceB : LSCategorySpace
  productSpace : LSCategorySpace
  productCategoryRelation : Prop
  lowerBoundInequality : Prop
  productCategoryRelationTerm : productCategoryRelation
  lowerBoundInequalityTerm : lowerBoundInequality

structure LSProductTheoremEvidence (P : LSProductTheoremPackage) where
  productCategoryRelationClosed : P.productCategoryRelation
  lowerBoundInequalityClosed : P.lowerBoundInequality

def LSProductTheoremClosed (P : LSProductTheoremPackage) : Prop :=
  P.productCategoryRelation ∧ P.lowerBoundInequality

theorem ls_product_theorem_closed_from_evidence
    (P : LSProductTheoremPackage) (E : LSProductTheoremEvidence P) :
    LSProductTheoremClosed P := by
  exact And.intro E.productCategoryRelationClosed E.lowerBoundInequalityClosed

end LyusternikShnirelManCategorySpaceFoundationCanonicalLaneLean
end HautevilleHouse