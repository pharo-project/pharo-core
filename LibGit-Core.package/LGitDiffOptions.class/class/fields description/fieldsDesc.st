fieldsDesc
	^#(
		LGitOptionsVersionsEnum version      "version for the struct"
		uint32 flags            "defaults to GIT_DIFF_NORMAL"

		"options controlling which files are in the diff"

		LGitSubmoduleIgnoreTypeEnum ignore_submodules "submodule ignore rule"
		LGitStringArray       pathspec     "defaults to include all paths"
		LGitDiffNotifyCallback notify_cb
		void *notify_payload

		"options controlling how to diff text is generated"

		uint32    context_lines    "defaults to 3"
		uint32    interhunk_lines  "defaults to 0"
		uint16    id_abbrev       "default 'core.abbrev' or 7 if unset"
		int64   max_size         "defaults to 512MB"
		String old_prefix       "defaults to 'a'"
		String new_prefix       "defaults to 'b'"
	)