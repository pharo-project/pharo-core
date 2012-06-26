dependents access
updateInspectors 
	"Update the inspectors on the receiver's variables."

	receiverInspector == nil ifFalse: [receiverInspector update].
	contextVariablesInspector == nil ifFalse: [contextVariablesInspector update]