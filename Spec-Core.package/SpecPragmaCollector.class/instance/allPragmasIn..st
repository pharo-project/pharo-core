as yet unclassified
allPragmasIn: aClass

	^ (Array
		streamContents: [:stream | Pragma
									withPragmasIn: aClass
									do: [:pragma | stream nextPut: pragma ]]) 