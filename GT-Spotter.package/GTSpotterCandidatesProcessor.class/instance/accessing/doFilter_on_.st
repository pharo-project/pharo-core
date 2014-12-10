doFilter: aStringQuery on: aStream
	| mResults|
	
	"if filter is empty we stream all candidates"
	aStringQuery isEmpty ifTrue: [ ^ self streamAllCandidatesOn: aStream ].
	
	mResults := OrderedCollection new.
	
	self allCandidates do: [ :each |
		(self is: each matching: aStringQuery) ifTrue: [
			mResults isEmpty ifTrue: [ Processor activeProcess priority: Processor userSchedulingPriority ].
			
			(mResults size >= self candidatesLimit)
				ifTrue: [ mResults size = self candidatesLimit ifTrue: [ Processor activeProcess priority: Processor userBackgroundPriority  ] ]
				ifFalse: [ aStream addObject: each inProcessor: self ].
				
			mResults add: each.
		] ].

	^ mResults