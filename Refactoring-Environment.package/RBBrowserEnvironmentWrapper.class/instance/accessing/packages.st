packages

	^ (self classes flatCollect: [:each | each packages]) asSet