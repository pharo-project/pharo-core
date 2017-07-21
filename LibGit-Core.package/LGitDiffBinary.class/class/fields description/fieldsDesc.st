fieldsDesc
	^#(	
		uint contains_data;
		LGitDiffBinaryFile old_file; "< The contents of the old file."
		LGitDiffBinaryFile new_file; "< The contents of the new file."
	)