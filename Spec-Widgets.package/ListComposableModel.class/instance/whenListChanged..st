protocol-events
whenListChanged: aBlock
	"Specify a block to value after the contents of the list has changed"

	"Basically when you set a new list of items"

	<api: #event>
	| block |
	
	block := [ :announcement :ann | 
		aBlock
			cull: announcement newContents
			cull: announcement oldContents
			cull: announcement
			cull: ann ].
	
	listAnnouncer
		on: ValueChanged
		do: block