theory abs imports "~~/src/HOL/Hoare/Hoare_Logic" begin
theorem
  "
  VARS (z::int)
  {True}

  IF x \<ge> 0 THEN
    z := x
  ELSE
    z := 0 - x
  FI

  {z = abs x}"
apply(vcg)
apply(auto)
done
end