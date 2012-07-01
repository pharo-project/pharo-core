private
close: aSystemProgressItemMorph

	self bars isEmpty ifTrue: [ ^ self ].
	
	lock critical: [
		aSystemProgressItemMorph delete.
		self bars size = 0
			ifTrue: [ self delete ]
			ifFalse: [ self recenter ] ].

	self refresh.