diff_num_deltas: diff
	
	^ self call: #(size_t git_diff_num_deltas #(self)) options: #()