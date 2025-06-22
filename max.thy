theory max imports "~~/src/HOL/Hoare/Hoare_Logic" begin
theorem
  "
  VARS (z::int)
  {True}

  IF x \<ge> y THEN
    z := x
  ELSE
    z := y
  FI

  {z = max x y}"
apply(vcg)  (*verification condition generator*)
  by simp

end