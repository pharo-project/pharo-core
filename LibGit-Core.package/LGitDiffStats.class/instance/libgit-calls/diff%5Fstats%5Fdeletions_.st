diff_stats_deletions: stats
	
	^ self
		call: #(size_t git_diff_stats_deletions #(self))
		options: #()