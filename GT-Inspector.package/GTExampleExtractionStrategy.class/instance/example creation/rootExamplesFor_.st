rootExamplesFor: anExampleProvider
	| pragmas |

	pragmas := self examplePragmas 
		inject: OrderedCollection new
		into: [ :result :pragma |
			result , (Pragma 
				allNamed: pragma 
				in: anExampleProvider class)].
	^ (pragmas select: [ :each | each selector isUnary ])
			ifEmpty: [ #() ]
			ifNotEmpty: [ :examplePragmas | examplePragmas collect: [ :eachPragma | 
				self createExampleForExamplePragma: eachPragma from: anExampleProvider ] ]