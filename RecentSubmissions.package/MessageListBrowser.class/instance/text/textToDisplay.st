textToDisplay
	
	^ self selectedNode 
		ifNotNil: [
			self selectedNode isInspectable 
				ifTrue: [^self displayInformationFrom: self selectedNode]]