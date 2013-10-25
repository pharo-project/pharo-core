updateDefinedClassNamed: oldString withNewName: newString
	(self hasClassNamed: oldString)
		ifTrue: [ 
			self removeClassNamed: oldString.
			self addClassNamed: newString ]