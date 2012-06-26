private
defaultSpecSelector
	
	((((SpecPragmaCollector behavior: self class)
		filter: [:prg | prg keyword = 'spec:' and: [prg arguments includes: #default]])
		reset;
		collected)
		collect: [:e | e method selector ])
		ifNotEmpty: [:col | ^ col first ].


	self specSelectors
		ifNotEmpty: [:col | col size = 1 ifTrue: [ ^ col first ]].
		
	"should use pragmas"
	^ #defaultSpec
	
