testProjectFetch

	| project version wc files loader |
	project := self project.
	version := project version: '3.0'.
	loader := version fetch.
	files := #('MetacelloTestConfigurationOfFoo-dkh.1' 'GoferFoo-lr.1' 'GoferBar.branch-lr.1' 'GoferFaux-tg.30' 'GoferBeau-dkh.53' ) asOrderedCollection.
	loader loadDirective packageDirectivesDo: [:pkgDirective | | file |
		file := pkgDirective file.
		self assert: (files indexOf: file) = 1.
		files remove: file ifAbsent: [ self assert: false ]].
	loader loadDirective versionDirectivesDo: [:vrsnDirective |
		vrsnDirective loader ~~ nil
			ifTrue: [ | spec |
				spec := vrsnDirective spec.
				self assert: (spec isKindOf: MetacelloVersionSpec) ]].
	self deny: (Smalltalk at: #'Metacello_Configuration_Test_DoIt_Result')
