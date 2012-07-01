dependents access
step 
	"Update the inspectors."
	self isPostMortem ifTrue: [ ^ self ].
	receiverInspector ifNotNil: [receiverInspector step].
	contextVariablesInspector ifNotNil: [contextVariablesInspector step].
