branch_is_head: branch
	
	^ self call: #(int git_branch_is_head #(self)) options: #()