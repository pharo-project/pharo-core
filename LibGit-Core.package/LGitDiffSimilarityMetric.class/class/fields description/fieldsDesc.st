fieldsDesc
"
int (*file_signature)(
		void **out, const git_diff_file *file,
		const char *fullpath, void *payload);
	int (*buffer_signature)(
		void **out, const git_diff_file *file,
		const char *buf, size_t buflen, void *payload);
	void (*free_signature)(void *sig, void *payload);
	int (*similarity)(int *score, void *siga, void *sigb, void *payload);
	void *payload;
"
	^#(
	LGitFileSignatureCallback file_signature;
	LGitBufferSignatureCallback buffer_signature;
	LGitFreeSignatureCallback free_signature;
	LGitSimilarityCallback similarity;
	void *payload;
	)