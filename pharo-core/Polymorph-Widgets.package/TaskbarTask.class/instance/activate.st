as yet unclassified
activate
	"Activate the task."
	
	(self morph respondsTo: #restoreAndActivate)
		ifTrue: [self morph restoreAndActivate]