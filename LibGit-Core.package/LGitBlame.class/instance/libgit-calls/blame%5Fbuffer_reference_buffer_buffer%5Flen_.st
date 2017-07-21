blame_buffer: out reference: reference buffer: buffer buffer_len: buffer_len
	
	^ self
		callUnchecked:
			#(FFIInt32 git_blame_buffer #(LGitBlame *self , LGitBlame reference , String buffer , size_t buffer_len))
		options: #()