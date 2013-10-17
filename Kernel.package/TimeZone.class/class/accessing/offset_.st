offset: anOffset
 	"Return the timezone with the given offset"
 	^ self timeZones 
		detect: [ :tz | tz offset = anOffset ]
		ifNone: [ self new offset: anOffset ]