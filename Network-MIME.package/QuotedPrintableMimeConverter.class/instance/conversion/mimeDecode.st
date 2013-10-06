mimeDecode
	"Do conversion reading from mimeStream writing to dataStream"
	| line s c1 v1 c2 v2 |
	[ (line := mimeStream nextLine) isNil ] whileFalse: 
		[ line := line trimRight.
		line size = 0 
			ifTrue: [ dataStream cr ]
			ifFalse: 
				[ s := line readStream.
				
				[ dataStream nextPutAll: (s upTo: $=).
				s atEnd ] whileFalse: 
					[ c1 := s next.
					v1 := c1 digitValue.
					((v1 
						between: 0
						and: 15) and: [ s atEnd not ]) 
						ifFalse: 
							[ dataStream
								nextPut: $=;
								nextPut: c1 ]
						ifTrue: 
							[ c2 := s next.
							v2 := c2 digitValue.
							(v2 
								between: 0
								and: 15) 
								ifFalse: 
									[ dataStream
										nextPut: $=;
										nextPut: c1;
										nextPut: c2 ]
								ifTrue: [ dataStream nextPut: (Character value: v1 * 16 + v2) ] ] ].
				line last = $= ifFalse: [ dataStream cr ] ] ].
	^ dataStream