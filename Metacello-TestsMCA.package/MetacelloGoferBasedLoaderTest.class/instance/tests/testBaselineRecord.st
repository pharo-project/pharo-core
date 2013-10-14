testBaselineRecord

	| project version loader files |
	project := self project.
	version := project version: '1.0-baseline'.
	loader := version record.
	files := #('GoferFoo' 'GoferBar') asOrderedCollection.
	loader loadDirective packageDirectivesDo: [:pkgDirective | 
		files remove: pkgDirective packageName ifAbsent: [ self assert: false ]].
	self assert: files isEmpty
