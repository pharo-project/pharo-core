index_entrycount: index
	
	^ self call: #(size_t git_index_entrycount #(self)) options: #()