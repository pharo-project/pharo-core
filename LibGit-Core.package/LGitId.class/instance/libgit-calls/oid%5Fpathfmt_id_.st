oid_pathfmt: out id: id 
	^ self call: #(void git_oid_pathfmt(void *out, LGitId * self)) options: #(  )