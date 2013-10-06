inspectorType: anInspectorClass
	"Use a new inspector type. Instantiate the given inspector class and replace the current view"
	
	anInspectorClass = self inspector class
		ifTrue: [  ^ self ].
	anInspectorClass isNil
		ifTrue: [ ^ self ].
		
	self basicInspector: (anInspectorClass new 
		inspect: self object;
		yourself).

	history replaceCurrentWith: self inspector.
	self toolbar update.