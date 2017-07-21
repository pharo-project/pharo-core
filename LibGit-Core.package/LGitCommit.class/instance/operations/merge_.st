merge: anotherCommit
	"Merge two commits, producing a git_index that reflects the result of the merge."
	| index | 
	index := LGitIndex of: self repository.
	self withReturnHandlerDo: [ 
		self merge_result: index commit: anotherCommit options: LGitMergeOptions defaults.
	].

	"There is a bug on libgit2 and we need to set the owner of the index (because it is not
	setting it)"
	index hackOwner: self repository.
	
	^ index
