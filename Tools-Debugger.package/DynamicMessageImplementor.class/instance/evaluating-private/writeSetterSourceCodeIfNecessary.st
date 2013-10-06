writeSetterSourceCodeIfNecessary

	self isMessageASetter ifTrue: [ self writeSetterSourceCode ]