import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceFoundationCanonicalLaneLean

structure LusternikSchnirelmannCategoryPackage where
  categoryNumberDefined : Prop
  cupLengthLowerBound : Prop
  categoryCupLengthRelation : Prop
  monotonicityUnderMaps : Prop
  productFormula : Prop

structure LusternikSchnirelmannCategoryEvidence (C : LusternikSchnirelmannCategoryPackage) where
  categoryNumberDefinedClosed : C.categoryNumberDefined
  cupLengthLowerBoundClosed : C.cupLengthLowerBound
  categoryCupLengthRelationClosed : C.categoryCupLengthRelation
  monotonicityUnderMapsClosed : C.monotonicityUnderMaps
  productFormulaClosed : C.productFormula

def LusternikSchnirelmannCategoryClosed (C : LusternikSchnirelmannCategoryPackage) : Prop :=
  C.categoryNumberDefined ∧ C.cupLengthLowerBound ∧ C.categoryCupLengthRelation ∧ C.monotonicityUnderMaps ∧ C.productFormula

theorem lusternik_schnirelmann_category_closed_from_evidence (C : LusternikSchnirelmannCategoryPackage) (E : LusternikSchnirelmannCategoryEvidence C) :
    LusternikSchnirelmannCategoryClosed C := by
  exact And.intro E.categoryNumberDefinedClosed
    (And.intro E.cupLengthLowerBoundClosed
      (And.intro E.categoryCupLengthRelationClosed
        (And.intro E.monotonicityUnderMapsClosed E.productFormulaClosed)))

end LyusternikShnirelManCategorySpaceFoundationCanonicalLaneLean
end HautevilleHouse