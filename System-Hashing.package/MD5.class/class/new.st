as yet unclassified
new

	self isPluginAvailable 
		ifTrue: [ ^self basicNew ]
		ifFalse: [ ^MD5NonPrimitive basicNew ]