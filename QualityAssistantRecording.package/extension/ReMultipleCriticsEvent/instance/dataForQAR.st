dataForQAR

	| data |

	data := super dataForQAR
		at: #critics put:
			(critics collect: #dataForQAREntityless as: Array);
		yourself.
		
	critics ifEmpty: [ 
		(data at: #entity) removeKey: #sourceCode ifAbsent: [  ] ].

	^ data