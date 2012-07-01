accessing
path: aString
	"http:// server / aString /updates.list"
	
	^ path ifNil: [ path := 'updates/pharo'].