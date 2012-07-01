convenience-inspecting
registerInspector: anInspectorClass for: anInstanceClass

	"Register inspector class for given instance class" 

	inspectorsMap at: anInstanceClass name put: anInspectorClass name
