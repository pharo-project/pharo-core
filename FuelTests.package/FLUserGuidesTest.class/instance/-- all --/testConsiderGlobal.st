testConsiderGlobal
	
	| aSerializer anArray materializedArray |
	"Prepare an array whose two elements are system globals."
	anArray := Array with: Set new with: Set new.
	Smalltalk at: #GlobalSet1 put: anArray first.
	Smalltalk at: #GlobalSet2 put: anArray second.

	"Serialize considering *only first* as a global object."
	FileStream forceNewFileNamed: 'demo.fuel' do: [:aStream |
		aSerializer := FLSerializer newDefault.
		aSerializer analyzer considerGlobal: #GlobalSet1.
		aSerializer serialize: anArray on: aStream binary].

	"Materialize"
	FileStream oldFileNamed: 'demo.fuel' do: [:aStream |
		materializedArray := (FLMaterializer newDefault 
			materializeFrom: aStream binary) root].
		
	"Check that second element is a new Set."
	[ (Smalltalk at: #GlobalSet1) == materializedArray first ] assert.
	[ (Smalltalk at: #GlobalSet2) ~~ materializedArray second ] assert.
