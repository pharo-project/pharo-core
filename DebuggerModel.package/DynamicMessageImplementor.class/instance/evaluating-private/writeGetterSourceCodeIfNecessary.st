writeGetterSourceCodeIfNecessary

	self isMessageAGetter ifTrue: [ self writeGetterSourceCode ]