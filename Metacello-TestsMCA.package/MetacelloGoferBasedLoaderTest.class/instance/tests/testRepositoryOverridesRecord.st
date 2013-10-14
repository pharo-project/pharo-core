testRepositoryOverridesRecord

	| project version loader names |
	project := self project.
	version := project version: '1.0'.
	version repositoryOverrides: (OrderedCollection with: MCDictionaryRepository new).
	self 
		shouldnt: [ version record ]
		raise: Error.
	version repositoryOverrides: (OrderedCollection with: (Smalltalk at: #'Metacello_Gofer_Test_Repository')).
	loader := version record.
	names := #('GoferFoo' 'GoferBar' ) asOrderedCollection.
	loader loadDirective packageDirectivesDo: [:pkgDirective | | name |
		name := pkgDirective packageName.
		self assert: (names indexOf: name) = 1.
		names remove: name ifAbsent: [ self assert: false ]].
