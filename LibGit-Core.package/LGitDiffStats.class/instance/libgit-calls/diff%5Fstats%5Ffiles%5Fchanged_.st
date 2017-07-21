diff_stats_files_changed: stats
	
	^ self
		call: #(size_t git_diff_stats_files_changed #(self))
		options: #()