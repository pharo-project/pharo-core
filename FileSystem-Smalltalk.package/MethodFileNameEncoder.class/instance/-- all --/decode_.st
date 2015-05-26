decode: string
	^ (super decode: string) allButLast: 3 "'.st' size ".