handles: anException
	"Determine whether an exception handler will accept a signaled exception."

	exceptions do:
		[:ex |
		(ex handles: anException)
			ifTrue: [^true]].
	^false