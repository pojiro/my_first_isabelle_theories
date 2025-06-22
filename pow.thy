theory pow imports "~~/src/HOL/Hoare/Hoare_Logic" begin
theorem
"
  VARS (x::nat) (i::nat)

  {True}
  x := 1;
  i := 0;
  WHILE i < n
  INV {(0 \<le> i \<and> i \<le> n) \<and> x = a ^ i}
  DO
    x := x * a;
    i := i + 1
  OD

  {x = a ^ n}
"
apply(vcg)
apply(auto)
done
end