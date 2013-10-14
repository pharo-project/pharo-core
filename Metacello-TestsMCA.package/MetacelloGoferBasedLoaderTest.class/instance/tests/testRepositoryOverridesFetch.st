testRepositoryOverridesFetch

	| project version loader names |
	project := self project.
	version := project version: '1.0'.
	version repositoryOverrides: (OrderedCollection with: MCDictionaryRepository new).
	self 
		should: [ version fetch ]
		raise: Error.
	version repositoryOverrides: (OrderedCollection with: (Smalltalk at: #'Metacello_Gofer_Test_Repository')).
	loader := version fetch.
	names := #('GoferFoo-lr.1' 'GoferBar-jf.1' ) asOrderedCollection.
	loader loadDirective packageDirectivesDo: [:pkgDirective | | name |
		name := pkgDirective file.
		self assert: (names indexOf: name) = 1.
		names remove: name ifAbsent: [ self assert: false ]].
