fieldsDesc
	^#(
	LGitDiffLineTypeEnum	  origin       "A git_diff_line_t value"
	int    old_lineno   "Line number in old file or -1 for added line"
	int    new_lineno   "Line number in new file or -1 for deleted line"
	int    num_lines    "Number of newline characters in content"
	size_t content_len  "Number of bytes of data"
	int64 content_offset "Offset in the original file to the content"
	String content "Pointer to diff text, not NUL-byte terminated"
	) 