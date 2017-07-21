fieldsDesc
	^#(	
	LGitDeltaTypeEnum status
	uint32 flags
	"for RENAMED and COPIED, value 0-100"
	uint16 similarity
	"number of files in this delta"
	uint16 nfiles
	LGitDiffFile old_file
	LGitDiffFile new_file
	)