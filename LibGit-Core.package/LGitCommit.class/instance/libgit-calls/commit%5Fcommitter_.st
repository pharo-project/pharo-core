commit_committer: commit
	
	^ self
		call: #(LGitSignature * git_commit_committer #(self))
		options: #()