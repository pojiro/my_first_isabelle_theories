theory mul imports "~~/src/HOL/Hoare/Hoare_Logic" begin
theorem
"
  VARS (x::nat) (i::nat)

  {True}
  x := 0;
  i := 0;
  WHILE i \<noteq> b
  INV {x = a * i}
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