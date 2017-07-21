remote_delete: repo name: name
	
	^ self
		call:
			#(LGitReturnCodeEnum git_remote_delete #(LGitRepository repo , String name))
		options: #()