protocol
categories: aCollectionOfSymbols
	| cats |
	
	cats := aCollectionOfSymbols collect: [:e | KMRepository default categoryForName: e].
	categories contents: cats