dumpWithLabels

	"dump the native code , interspersed with labels"
	
	| offsets i str |
	
	offsets := OrderedCollection new.

	labels keysAndValuesDo: [ :name :offset |
		offsets add: (offset -> name)
	].

	offsets := offsets sort: [:a :b | a key < b key ].
	
	str := String new writeStream.
	i := 0.
	
	offsets do: [:offset |
		i to: offset key -1 do: [:x | str nextPutAll: ((bytes at: i+1) printStringBase: 16 nDigits: 2) ; space. i:=i+1. ].
		str cr; nextPutAll: offset value; cr.
	].

	i to: bytes size-1 do: [:x | str nextPutAll: ((bytes at: i+1) printStringBase: 16 nDigits: 2) ; space. i := i + 1] .
	^ str contents