ceiling
	"Answer a Point that is the receiver's x and y ceiling. Answer the receiver if its coordinates are already integral."

	(x isInteger and: [y isInteger]) ifTrue: [^ self].
	^ x ceiling @ y ceiling
