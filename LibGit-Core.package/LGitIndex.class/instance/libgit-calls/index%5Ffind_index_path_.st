index_find: at_pos index: index path: path
	
	^ self
		call:
			#(LGitReturnCodeEnum git_index_find #(LGitWriteBackValueSizeT *at_pos , self, String path))
		options: #(optCoerceNilToNull)