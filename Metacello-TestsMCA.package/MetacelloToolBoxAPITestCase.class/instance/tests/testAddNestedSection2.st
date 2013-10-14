testAddNestedSection2
	"Add nested section as addition to existing version"

	| source |
	self createNested12Baseline.
	self assert: (source := ((Smalltalk at: self configurationName) sourceCodeAt: #baseline12:) asString) = self baseline12SourceString