externalFunctionDeclaration
	"Parse the function declaration for a call to an external library."

	| descriptorClass callType retType externalName args argType module |
	descriptorClass := Smalltalk globals at: #ExternalFunction ifAbsent: [ nil ].
	descriptorClass == nil 
		ifTrue: [ ^ false ].
	callType := descriptorClass callingConventionFor: currentToken value.
	callType == nil 
		ifTrue: [ ^ false ].	"Parse return type"
	self step.
	retType := self externalType: descriptorClass.
	retType == nil 
		ifTrue: [ ^ self parserError: 'lack return type' ].	"Parse function name or index"
	externalName := currentToken value.
	(self match: String)
		ifTrue: [ externalName := externalName asSymbol ]
		ifFalse: [ (self match: Number)
			ifFalse: [ self parserError: 'function name or index' ] ].
	(self matchToken: $()
		ifFalse: [ ^ self parserError: 'argument list' ].
	args := Array new writeStream.
	[ currentToken value == $) ]
		whileFalse: [ 
			argType := self externalType: descriptorClass.
			argType == nil
				ifTrue: [ ^ self parserError: 'argument' ].
			argType isVoid & argType isPointerType not
				ifFalse: [ args nextPut: argType ] ].
	(args position = currentScope selector numArgs) ifFalse: [
		^self parserError: 'Matching number of arguments'].
	(self matchToken: $))
		ifFalse: [ ^ self parserError: ')' ].
	(self matchToken: 'module:')
		ifTrue: [ 
			module := currentToken value.
			(self match: String)
				ifFalse: [ ^ self parserError: 'String' ].
			module := module asSymbol ].

	^ RBFFICallPragma 
		externalName: externalName 
		module: module 
		callType: callType 
		returnType: retType 
		argumentTypes: args contents
						