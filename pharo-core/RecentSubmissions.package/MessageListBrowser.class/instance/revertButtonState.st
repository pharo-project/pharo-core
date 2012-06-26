buttons behavior
revertButtonState 

	^self selectedNode notNil and: [self selectedNode isInspectable not]
