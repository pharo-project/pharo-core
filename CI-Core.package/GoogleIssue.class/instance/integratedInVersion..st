integration
integratedInVersion: anInteger
	"set the status of the issue to ReviewNeeded and post a message"
	
	self status: #Integrated.
	^ self submitStatusChange: (String streamContents: [ :stream| 
				stream <<'Integrated in Pharo' << SystemVersion current dottedMajorMinor<< ' ' << anInteger printString; cr ;cr ; <<'Thanks' ])