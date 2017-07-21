blame_get_hunk_count: blame
	
	^ self
		call: #(uint32 git_blame_get_hunk_count #(self))
		options: #()