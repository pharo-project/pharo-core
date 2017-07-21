commit_time: commit
	
	^ self call: #(int64 git_commit_time #(self)) options: #()