import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceFoundation

structure AdmissibleClass where
  object : LyusternikSchnirelmannCategoryObject Type
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  catClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def catClosed (O : LyusternikSchnirelmannCategoryObject Type) : Prop :=
  O.cat_def = rfl

end LyusternikShnirelManCategorySpaceFoundation
end HautevilleHouse
