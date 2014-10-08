transform
	self removeOldAccessors.
	class renameInstanceVariable: variableName to: newName around: [ self renameReferences ].
	self addNewAccessors.
	self renameAccessorsReferences