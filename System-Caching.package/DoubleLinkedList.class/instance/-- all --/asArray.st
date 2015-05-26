asArray
	^ Array streamContents: [ :out |
		self do: [ :each | out nextPut: each ] ]