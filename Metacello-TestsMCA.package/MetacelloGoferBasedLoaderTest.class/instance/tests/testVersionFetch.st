testVersionFetch

	| project version loader names |
	project := self project.
	version := project version: '1.0'.
	loader := version fetch.
	names := #('GoferFoo-lr.1' 'GoferBar-jf.1' ) asOrderedCollection.
	loader loadDirective packageDirectivesDo: [:pkgDirective | | name |
		name := pkgDirective file.
		self assert: (names indexOf: name) = 1.
		names remove: name ifAbsent: [ self assert: false ]].
	loader loadDirective versionDirectivesDo: [:vrsnDirective |
		vrsnDirective loader ~~ nil
			ifTrue: [ | spec |
				spec := vrsnDirective spec.
				self assert: (spec isKindOf: MetacelloVersionSpec) ]].
