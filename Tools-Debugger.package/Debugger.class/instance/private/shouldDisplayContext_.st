shouldDisplayContext: context
	"called by filterStack: on each context to see if it should be displayed 
	in the Debugger view or not."
	|selector receiver|
	selector := context method selector.
	receiver := context receiver.
	
	"special case for the DoIt selector"
	(receiver class == UndefinedObject and: [selector == #DoIt]) 
		ifTrue: [ ^ true ].
	
	"skip common slectors"
	(#(isNil ifNil: ifNotNil: ifNotNilDo:) includes: selector) 
		ifTrue: [ ^ false ].
	
	"skip sends to kernel classes"
	({Boolean. True. False. BlockClosure. MethodContext. Array. OrderedCollection. Set. IdentitySet. Dictionary. IdentityDictionary. Class. Metaclass. Behavior. SmallInteger. Float. Error. Exception. UndefinedObject. MessageSend} 
		includes: receiver class) 
			ifTrue: [ ^ false ]. 
	
	"skip common message sends to TestCase"
	(((receiver isKindOf: TestCase) 
		and: [TestCase includesSelector: selector])
		and: [(receiver class includesSelector: selector) not])
			ifTrue: [ ^ false ].
			
	"...otherwise display the context"
	^ true