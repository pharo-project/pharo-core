revwalk_push_ref: walk refname: refname
	
	^ self
		call:
			#(LGitReturnCodeEnum git_revwalk_push_ref #(self , String refname))
		options: #()