removeClassNamed: aName
	"Invoked from fileouts:  if there is currently a class in the system named aName, then remove it.  If anything untoward happens, report it in the Transcript.  "

	| oldClass |
	(oldClass := self at: aName asSymbol ifAbsent: [ nil ]) 
		ifNil: [ 
			self crTrace: 'Removal of class named ' , aName , ' ignored because ' , aName , ' does not exist.'.
			^ self ].
	oldClass removeFromSystem