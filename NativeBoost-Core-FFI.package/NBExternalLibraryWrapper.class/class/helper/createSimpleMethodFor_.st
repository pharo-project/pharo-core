createSimpleMethodFor: aSpec
	^ String
		streamContents: [ :str | 
			str
				nextPutAll: aSpec asMethodSelectorAndArguments;
				crtab;
				nextPutAll: '<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>';
				cr;
				crtab;
				nextPutAll: '^ self call: ';
				nextPutAll: aSpec asArraySpec;
				cr ]