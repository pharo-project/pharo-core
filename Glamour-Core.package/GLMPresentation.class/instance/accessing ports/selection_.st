selection: anObject
	"Tell the pane about the new selection. This method is called when the user changes a view's selection' (e.g., he clicks on an element in a list morph)." 
	self acceptsSelection ifFalse: [^ self].
	(self pane port: #rawSelection) value: anObject.
	rawSelectionTransmissions do: #transmit