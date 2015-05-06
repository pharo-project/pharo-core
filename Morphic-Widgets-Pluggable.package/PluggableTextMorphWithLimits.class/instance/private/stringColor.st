stringColor
	| size |
	size := self textSize.
	self warningLimit negative ifTrue: [ ^ self theme textColor ].
	^ size >= self warningLimit
			ifTrue: [
				size >= self alertLimit
					ifTrue: [ Color red ]
					ifFalse: [ Color orange ]]
			ifFalse: [ self theme textColor ].