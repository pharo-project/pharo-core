serialize/materialize
serializeInstance: aCompiledMethodToSerialize with: anEncoder

	| header bytecodesPlusTrailerSize cmSize cmInitialPC aCompiledMethod |

	aCompiledMethod := self class trailerEncoder compiledMethodToSerialize: aCompiledMethodToSerialize.

	header := aCompiledMethod header.
	cmSize := aCompiledMethod size.
	cmInitialPC := aCompiledMethod initialPC.
	bytecodesPlusTrailerSize := cmSize - cmInitialPC + 1.

	anEncoder 
		encodeUint32: header;
		encodeUint16: bytecodesPlusTrailerSize.	

	cmInitialPC to: cmSize
		do: [ :index | anEncoder encodeByte: (aCompiledMethod at: index) ].