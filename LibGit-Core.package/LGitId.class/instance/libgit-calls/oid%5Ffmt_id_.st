oid_fmt: out id:  objectId
	^self call: #(void git_oid_fmt(void *out, LGitId * self)) options: #(  )