converting
asHex
	| stream |
	stream := (String new: self size * 4) writeStream.
	self do: [ :ch | stream nextPutAll: ch hex ].
	^stream contents