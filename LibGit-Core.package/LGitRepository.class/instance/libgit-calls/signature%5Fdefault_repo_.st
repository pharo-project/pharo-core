signature_default: out repo: repo
	
	^ self
		call:
			#(LGitReturnCodeEnum git_signature_default #(void **out , self))
		options: #()