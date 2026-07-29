import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceFoundation

def ConstrainedLSCategoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ls_category_endgame (A : AdmissibleClass) :
    ConstrainedLSCategoryClosure A :=
by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LyusternikShnirelManCategorySpaceFoundation
end HautevilleHouse
