updateInspectorsFromContext: aContext
	| receiver |
	
	contextInspector inspect: aContext.
	
	receiver := aContext ifNotNil: [ aContext home receiver ]. 
	receiverInspector inspect: receiver.