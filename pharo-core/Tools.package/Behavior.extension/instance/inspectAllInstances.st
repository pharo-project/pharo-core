*Tools-Inspector
inspectAllInstances 
	"Inpsect all instances of the receiver.  1/26/96 sw"

	| all allSize prefix |
	all := self allInstances.
	(allSize := all size) isZero ifTrue: [^ self inform: 'There are no 
instances of ', self name].
	prefix := allSize = 1
		ifTrue: 	['The lone instance']
		ifFalse:	['The ', allSize printString, ' instances'].
	
	all asArray inspectWithLabel: (prefix, ' of ', self name)