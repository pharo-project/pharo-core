writepack: writepack buffer: buffer length: length progress: progress
	
	^ self
		call:
			#(int #(LGitOdbWritepack * writepack , void * buffer , int length , LGitTransferProgress * progress))
		options: #(optMayGC)