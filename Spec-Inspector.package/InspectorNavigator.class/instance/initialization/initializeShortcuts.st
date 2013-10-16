initializeShortcuts
	self bindKeyCombination: $[ command toAction: [ self inspectPrevious ].
	self bindKeyCombination: $] command toAction: [ self inspectNext ].

	self bindKeyCombination: $[ shift command toAction: [ self usePreviousInspectorType ].
	self bindKeyCombination: $] shift command toAction: [ self useNextInspectorType ].

	self bindKeyCombination: $0 command toAction: [ self useBasicInspector ].
	self bindKeyCombination: $0 shift command toAction: [ self useDefaultInspector ].
	
	"code duplication? yes, but still easier than capturing arguments ;)"
	self bindKeyCombination: $1 command toAction: [ self useInspectorAt: 1 ].
	self bindKeyCombination: $2 command toAction: [ self useInspectorAt: 2 ].
	self bindKeyCombination: $3 command toAction: [ self useInspectorAt: 3 ].
	self bindKeyCombination: $4 command toAction: [ self useInspectorAt: 4 ].
	self bindKeyCombination: $5 command toAction: [ self useInspectorAt: 5 ].
	self bindKeyCombination: $6 command toAction: [ self useInspectorAt: 6 ].
	self bindKeyCombination: $7 command toAction: [ self useInspectorAt: 7 ].
	self bindKeyCombination: $8 command toAction: [ self useInspectorAt: 8 ].
	self bindKeyCombination: $9 command toAction: [ self useInspectorAt: 9 ].