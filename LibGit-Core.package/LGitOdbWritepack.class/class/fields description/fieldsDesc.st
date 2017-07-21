fieldsDesc
	^#(
	"git_odb_backend *" void *backend; "Using void* because I didn't mapped the structure git_odb_backend"
	LGitWritepackAppendCallout append;
	LGitWritepackCommitCallout commit;
	LGitWritepackFreeCallout free;
	)