building
fromKeyboardEvent: evt
	| modifier control command shift hasModifier keyString |
	control := evt controlKeyPressed.
	command := evt commandKeyPressed.
	shift := evt shiftPressed.
	(shift | command | control)
		ifFalse: [^ KMSingleKeyShortcut from: evt keyCharacter ].
	modifier := KMNoShortcut new.
	control
		ifTrue: [ modifier := modifier + KMModifier ctrl ].
	command
		ifTrue: [ modifier := modifier + KMModifier command ].
	shift
		ifTrue: [ modifier := modifier + KMModifier shift ].
	^ modifier + evt modifiedCharacter