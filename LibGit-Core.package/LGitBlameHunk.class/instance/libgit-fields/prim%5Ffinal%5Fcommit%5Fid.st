prim_final_commit_id
	"This method was automatically generated"
	^ LGitId fromHandle: (handle referenceStructAt: OFFSET_PRIM_FINAL_COMMIT_ID length: LGitId byteSize)