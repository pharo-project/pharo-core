private
removeAClass: anEvent
	
	| tempList |
	tempList := self methodReferenceList select:[:each | each className = anEvent item name asSymbol].
	tempList do: [:each | self removeMethodReference: each]