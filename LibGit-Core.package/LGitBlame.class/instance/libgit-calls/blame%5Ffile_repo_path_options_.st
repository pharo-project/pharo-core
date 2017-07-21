blame_file: out repo: repo path: path options: options
	
	^ self
		callUnchecked:
			#(int git_blame_file #(LGitBlame * self , LGitRepository repo , String path , LGitBlameOptions * options))
		options: #()