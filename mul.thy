theory mul imports "~~/src/HOL/Hoare/Hoare_Logic" begin
theorem
"
  VARS (x::nat) (i::nat)

  {True}
  x := 0;
  i := 0;
  WHILE i < b
  INV {(0 \<le> i \<and> i \<le> b) \<and> x = a * i}
  DO
    x := x + a;
    i := i + 1
  OD

  {x = a * b}
"
apply(vcg)
apply(auto)
done
end