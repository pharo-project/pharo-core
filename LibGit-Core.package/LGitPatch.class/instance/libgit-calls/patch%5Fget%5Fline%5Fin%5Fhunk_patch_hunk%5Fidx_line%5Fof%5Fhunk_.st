patch_get_line_in_hunk: out patch: patch hunk_idx: hunk_idx line_of_hunk: line_of_hunk
	
	^ self
		call:
			#(LGitReturnCodeEnum git_patch_get_line_in_hunk #(LGitDiffLine * out , self , size_t hunk_idx , size_t line_of_hunk))
		options: #()