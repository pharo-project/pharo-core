fieldsDesc
	^#(
		"
		 * The source name of the reference
		 "
		String src_refname;
		"
		 * The name of the reference to update on the server
		 "
		String dst_refname;
		"
		 * The current target of the reference
		 "
		LGitId src
		"
		 * The new target for the reference
		 "
		LGitId dst
	)