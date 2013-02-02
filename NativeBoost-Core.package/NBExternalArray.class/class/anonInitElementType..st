private
anonInitElementType:  aTypeName
	"initialize the anonymous subclass of me" 
	
	"just a safety measure "
	self == NBExternalArray ifTrue: [ self error: 'use of private protocol' ].
	
	methodDict := MethodDictionary new.
	name := organization := classPool := sharedPools := instanceVariables := nil.
	superclass := NBExternalArray.
	
	self initElementType:  aTypeName
	