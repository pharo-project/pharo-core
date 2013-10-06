tabs: aCollectionOfTabs
	| tabs |
	tabs := self
		primNewSize: aCollectionOfTabs size
		pixels: 1
		firstAlignment: 0
		firstOffset: aCollectionOfTabs first.
	aCollectionOfTabs allButFirst withIndexDo:[:each :i| tabs at: i -1 put: each].
	^ tabs	
		
	