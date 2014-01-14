discoverPlatformId
	
	| platId |
	
	"should not use it, if Current already set"
	self assert: (Current isNil). 

	platId := self platformId. 

	self allSubclassesDo: [:class |
		class targetPlatformId = platId ifTrue: [ 
			class new  " should set Current during initialization"
	]].

	Current ifNil: [ self unsupportedPlatform ].
	
	^ Current 