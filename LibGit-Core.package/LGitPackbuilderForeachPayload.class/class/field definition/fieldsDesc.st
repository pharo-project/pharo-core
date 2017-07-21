fieldsDesc
	^#(
		LGitTransferProgress *stats;
		LGitTransferProgressCallback *progress_cb;
		void *progress_payload;
		LGitOdbWritepack *writepack;
	)