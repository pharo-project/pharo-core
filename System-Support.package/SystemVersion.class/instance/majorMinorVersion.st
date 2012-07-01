accessing
majorMinorVersion
	"Return the major/minor version number of the form X.Y, without any 'alpha' or 'beta' or other suffix. 
	If the receiver needs upgrading, do it. Remove the guard in 1.3."
	"SystemVersion current majorMinorVersion"
	
	self upgrade.
	^String streamContents: [:str |
		str 
			nextPutAll: self type;
			nextPutAll: self major printString; nextPut: $.;
			nextPutAll: self minor printString]