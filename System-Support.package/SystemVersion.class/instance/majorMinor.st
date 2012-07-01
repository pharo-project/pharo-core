accessing
majorMinor
	"Return the major/minor version number of the form X.Y, without any 'alpha' or 'beta' or other suffix. 
	If the receiver needs upgrading, do it. Remove the guard in 1.3."
	"SystemVersion current majorMinor"
	
	^ self majorMinor: '.'