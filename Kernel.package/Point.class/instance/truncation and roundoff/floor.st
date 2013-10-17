floor
	"Answer a Point that is the receiver's x and y floor. Answer the receiver if its coordinates are already integral."

	(x isInteger and: [y isInteger]) ifTrue: [^ self].
	^ x floor @ y floor
