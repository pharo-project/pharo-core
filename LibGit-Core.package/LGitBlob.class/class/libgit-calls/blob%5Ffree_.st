blob_free: handle
	
	^ self
		call: 	#(void git_blob_free(void *handle))
		options: #()