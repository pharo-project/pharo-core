fieldsDesc
	"self rebuildFieldAccessors"
	^#(
	int local; " available locally "
	LGitId oid;
	LGitId loid;
	String name;
	"
	 * If the server send a symref mapping for this ref, this will
	 * point to the target.
	"
	String symref_target;
	)