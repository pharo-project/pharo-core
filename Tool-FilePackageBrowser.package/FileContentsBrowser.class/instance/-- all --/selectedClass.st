selectedClass
	"Answer the class that is currently selected. Answer nil if no selection 
	exists."

	self selectedClassName == nil ifTrue: [^nil].
	^self selectedPackage classAt: self selectedClassName