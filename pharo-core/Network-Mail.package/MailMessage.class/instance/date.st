accessing
date
	"Answer a date string for this message."

	^(Date fromSeconds: self time + (Date newDay: 1 year: 1980) asSeconds) 
		printFormat: #(2 1 3 47 1 2)