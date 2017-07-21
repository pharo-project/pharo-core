index_add_all: index pathspec: pathspec flags: flags callback: callback payload: payload
	
	^ self
		call:
			#(LGitReturnCodeEnum git_index_add_all #(
				self, 
				LGitStringArray *pathspec, 
				uint flags, 
				LGitIndexMatchedPathCallback callback, 
				void *payload))
		options: #(optMayGC optCoerceNilToNull)