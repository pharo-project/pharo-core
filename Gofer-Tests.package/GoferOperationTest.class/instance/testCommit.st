testing
testCommit
	| repository |
	repository := MCDictionaryRepository new.
	gofer package: 'GoferFoo'; load.
	gofer := Gofer new.
	gofer disablePackageCache.
	gofer repository: repository.
	gofer package: 'GoferFoo'.
	self shouldnt: [ gofer commit: 'A test commit' ] raise: Error.
	self assert: repository allVersionInfos size = 1