instance creation
openOn: anObject withEvalPane: withEval 
	"Create and schedule an instance of me on the model, anInspector. "

	^ self openOn: anObject withEvalPane: withEval withLabel: anObject defaultLabelForInspector