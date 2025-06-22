theory find_dup imports "~~/src/HOL/Hoare/Hoare_Logic" begin
theorem
  "VARS k
  {length v > 0}

  k := 0;
  WHILE k < length v - 1 \<and> v!k \<noteq> v!(k+1)
  INV {k \<le> length v - 1 \<and> (\<forall>i. i < k \<longrightarrow> v!i \<noteq> v!(i+1))}
  DO
    k := k + 1
  OD

  {k \<le> length v - 1
\<and> (k < length v - 1 \<longrightarrow> v!k = v!(k+1))
\<and> (\<forall>i. i < k \<longrightarrow> v!i \<noteq> v!(i+1))}"
apply(vcg)
apply(auto)
  using less_Suc_eq by auto