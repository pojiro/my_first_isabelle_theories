theory linear_search imports "~~/src/HOL/Hoare/Hoare_Logic" begin
theorem
  "VARS k
  {True}

  k := 0;
  WHILE k < length v \<and> x \<noteq> v!k
  INV {k \<le> length v \<and> (\<forall>i. i < k \<longrightarrow> x \<noteq> v!i)}
  DO
    k := k + 1
  OD

  {k \<le> length v
\<and> (k < length v \<longrightarrow> x = v!k)
\<and> (\<forall>i. i < k \<longrightarrow> x \<noteq> v!i)}"
apply(vcg)
apply(auto)
  using less_Suc_eq by auto