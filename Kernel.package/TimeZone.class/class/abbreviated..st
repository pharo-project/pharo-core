accessing
abbreviated: aString
 	"Return the timezone whose abbrivation is aString."
 	^ self timeZones detect: [ :tz | tz abbreviation = aString ].