blame_init_options: opts version: version
	^ self
		callUnchecked: #(int git_blame_init_options(LGitBlameOptions * self, LGitOptionsVersionsEnum version))
		options: #( )