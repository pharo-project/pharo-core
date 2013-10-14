testBaselineFetch

	| project version loader files |
	project := self project.
	version := project version: '1.0-baseline'.
	loader := version fetch.
	files := #('GoferFoo-lr.4' 'GoferBar-lr.1') asOrderedCollection.
	loader loadDirective packageDirectivesDo: [:pkgDirective | 
		files remove: pkgDirective file ifAbsent: [ self assert: false ]].
	loader loadDirective versionDirectivesDo: [:vrsnDirective |
		vrsnDirective loader ~~ nil
			ifTrue: [ | spec |
				spec := vrsnDirective spec.
				self assert: (spec isKindOf: MetacelloVersionSpec) ]].
	self assert: files isEmpty
