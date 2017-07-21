status_file: status_flags repo: repo path: path
	
	^ self
		call:
			#(LGitReturnCodeEnum git_status_file #(LGitWriteBackValueUInt status_flags, LGitRepository repo, String path))
		options: #()