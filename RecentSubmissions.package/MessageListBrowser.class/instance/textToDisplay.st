text
textToDisplay
	
	self selectedNode isNil 
		ifFalse: [
			self selectedNode isInspectable 
				ifTrue: [^self displayInformationFrom: self selectedNode]].
	^nil