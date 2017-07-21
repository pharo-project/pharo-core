fieldsDesc
	"https://libgit2.github.com/libgit2/#HEAD/type/git_merge_options"
	^#(
		LGitOptionsVersionsEnum version;
		uint32 flags; "Should be: git_merge_flag_t"
		uint rename_threshold;
		uint target_limit;
		void* metric; "Should be: git_diff_similarity_metric *"
		uint recursion_limit;
		String default_driver;
		uint32 file_favor; "Should be: git_merge_favor_flag_t"
		uint32 file_flags; "Should be: git_merge_file_flag_t"
	)