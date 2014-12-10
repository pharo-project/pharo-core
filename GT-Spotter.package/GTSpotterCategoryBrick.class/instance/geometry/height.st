height
	"instead of deleting brick when empty, just make it invisible"
	^ self subbricks isEmpty
		ifTrue: [ 0 ]
		ifFalse: [ super height ]