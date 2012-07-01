initialization
serviceOpenTrueTypeFont

	^ SimpleServiceEntry 
				provider: self 
				label: 'Open true type font'
				selector: #openTTFFile:
				description: 'Open true type font'