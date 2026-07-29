import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure LSCategorySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LSCategoryAdmittedObject where
  space : LSCategorySpace
  cwComplexLike : Prop
  fundamentalCategory : Prop
  lsCategoryModel : Prop
  cwComplexLikeTerm : cwComplexLike
  fundamentalCategoryTerm : fundamentalCategory
  lsCategoryModelTerm : lsCategoryModel
  conclusion : lsCategoryModel

structure LSCategoryEndgameState where
  object : LSCategoryAdmittedObject

def LSCategoryWitnessClosed (O : LSCategoryAdmittedObject) : Prop :=
  O.lsCategoryModel

end LyusternikShnirelManCategorySpaceFoundationCanonicalLaneLean
end HautevilleHouse