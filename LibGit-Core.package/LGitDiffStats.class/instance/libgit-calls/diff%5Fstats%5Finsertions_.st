diff_stats_insertions: stats
	
	^ self
		call: #(size_t git_diff_stats_insertions #(self))
		options: #()