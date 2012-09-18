protocol
protocolsOfSelector: aSelector

	^ (self protocols select: [:e | e includesMethod: aSelector ]) asArray