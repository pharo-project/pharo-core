remote_set_url: repo remote: remote url: urlString
	
	^ self
		call:
			#(LGitReturnCodeEnum git_remote_set_url #(LGitRepository repo , String remote , String urlString))
		options: #()