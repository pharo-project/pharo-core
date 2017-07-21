writepack: writepack progress: progress
	^ self
		call: #(int #(LGitOdbWritepack *writepack , LGitTransferProgress *progress))
		options: #(optMayGC)