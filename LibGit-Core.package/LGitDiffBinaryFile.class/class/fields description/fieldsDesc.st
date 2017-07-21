fieldsDesc
	^#(
		" The type of binary data for this file. "
		LGitDiffBinaryTypeEnum type;

		" The binary data, deflated. is char* originally, but I do not want to get the \0"
		void *data;

		" The length of the binary data. "
		size_t datalen;

		" The length of the binary data after inflation. "
		size_t inflatedlen;
	)