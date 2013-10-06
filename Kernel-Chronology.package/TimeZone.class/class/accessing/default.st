default
 	"Answer the default time zone - GMT"
 
 	^ self timeZones detect: [ :tz | tz offset = Duration zero ]
 