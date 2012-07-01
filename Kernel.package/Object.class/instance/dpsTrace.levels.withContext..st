error handling
dpsTrace: reportObject levels: anInt withContext: currentContext
	| reportString context displayCount |
	reportString := (reportObject respondsTo: #asString)
		ifTrue: [ reportObject asString ]
		ifFalse: [ reportObject printString ].
	(Smalltalk globals at: #Decompiler ifAbsent: [ nil ])
		ifNil: [ 
			Transcript
				cr;
				show: reportString ]
		ifNotNil: [ 
			context := currentContext.
			displayCount := anInt > 1.
			1 to: anInt do: [ :count | 
				Transcript cr.
				displayCount
					ifTrue: [ Transcript show: count printString , ': ' ].
				reportString notNil
					ifTrue: [ 
						Transcript show: context home class name , '/' , context sender selector , ' (' , reportString , ')'.
						context := context sender.
						reportString := nil ]
					ifFalse: [ 
						(context notNil and: [ (context := context sender) notNil ])
							ifTrue: [ Transcript show: context receiver class name , '/' , context selector ] ] ]	"Transcript cr" ]