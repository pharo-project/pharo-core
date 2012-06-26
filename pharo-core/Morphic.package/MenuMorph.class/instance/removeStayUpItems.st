menu
removeStayUpItems
	| stayUpItems |
	stayUpItems := self items select: [ :item | item isStayUpItem ].
	stayUpItems do: [ :ea | ea delete ].
