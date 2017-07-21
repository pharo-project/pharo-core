proxy_init_options: opts version: version
	^ self
		callUnchecked: #(LGitReturnCodeEnum git_proxy_init_options(void *handle, LGitOptionsVersionsEnum version))
		options: #(  )