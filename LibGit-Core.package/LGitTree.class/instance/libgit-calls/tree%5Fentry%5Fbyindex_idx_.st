tree_entry_byindex: tree idx: idx
	
	^ self
		call: #(LGitTreeEntry git_tree_entry_byindex #(self , size_t idx))
		options: #()