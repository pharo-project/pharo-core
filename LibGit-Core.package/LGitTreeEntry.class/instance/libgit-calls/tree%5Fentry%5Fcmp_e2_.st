tree_entry_cmp: e1 e2: e2
	
	^ self
		call: #(int git_tree_entry_cmp #(self , LGitTreeEntry e2))
		options: #()