categoryIconFor: aString
	self flag: #todo. "this would work better with the new class organizer"
	"((aString beginsWith: '---')
		or: [ aString = 'no messages' ]) ifTrue: [ ^ Smalltalk ui icons protocolNoneIcon ]."
	(aString beginsWith: '*') ifTrue: [ ^ Smalltalk ui icons protocolExtensionIcon ].
	(aString beginsWith: 'private') ifTrue: [ ^ Smalltalk ui icons protocolPrivateIcon ].
	((aString = 'initialization' )
		or: [ (aString = 'initialize-release') or: [ aString = 'finalization' ]])
		ifTrue: [ ^ Smalltalk ui icons protocolProtectedIcon ].	
	
	^ Smalltalk ui icons protocolNoneIcon 