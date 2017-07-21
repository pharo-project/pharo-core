oid_cmp: a b: b 
	^self call: #(int git_oid_cmp(LGitId * self, LGitId * b)) options: #(  )