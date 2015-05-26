decode: stringStream to: byteStream
	| char |
	[ stringStream atEnd ]
		whileFalse: [ 
			(char := stringStream next) == $_
				ifTrue: [ byteStream nextPut: $: asInteger ]
				ifFalse: [ 
					char == $%
						ifTrue: [ byteStream nextPut: (self readHexFrom: stringStream) ]
						ifFalse: [ 
							char charCode < 128
								ifTrue: [ byteStream nextPut: char charCode ]
								ifFalse: [ ZnCharacterEncodingError signal: 'ASCII character expected' ]]]]