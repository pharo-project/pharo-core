testIssue59PackageSpecRepositoryOverrides
	"test for Issue 59: http://code.google.com/p/metacello/issues/detail?id=59"
	
	| project version wc repoSpec pkg loader |
	project := self project.
	version := project version: '1.0'.
	repoSpec := version spec repositorySpecs first.
	pkg := version packageNamed: 'GoferBar'.
	pkg repository: repoSpec.
	loader := pkg loader.
	loader loaderPolicy: (MetacelloLoaderPolicy overrideRepositories: (OrderedCollection with: MCDictionaryRepository new)).
	self should: [ pkg load ] raise: Error.
	loader loaderPolicy: (MetacelloLoaderPolicy overrideRepositories: (OrderedCollection with: (Smalltalk at: #'Metacello_Gofer_Test_Repository'))).
	pkg load.
	wc := (GoferPackageReference name: 'GoferBar') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferBar-jf.1').
