theory p75 imports Main begin

theorem "(p \<longrightarrow> q) \<and> (\<not>p \<longrightarrow> r) \<longrightarrow> (p \<and> q) \<or> (\<not>p \<and> r)"
apply(auto)
done

theorem "(p \<and> q) \<or> (\<not>p \<and> r) \<longrightarrow> (p \<longrightarrow> q) \<and> (\<not>p \<longrightarrow> r)"
apply(auto)
done