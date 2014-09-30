shortcutAsString 
	"Answers a string explaining shortcut"
	^self shortcut isNil
		ifTrue: ['']
		ifFalse: [
			'alt+', 
				(self shortcut isUppercase 
					ifTrue: [ 'shift+' ]
					ifFalse: [ '' ]), 
				self shortcut asLowercase asString ]