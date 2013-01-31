private
announceOnMailingList
	"self new announceOnMailingList"
	
	| title contents |
	title := '[update ', self currentMajorVersionNumber asString , '] #', self currentUpdateVersionNumber asString.
	
	contents := String streamContents: [:str |
			str 
				nextPutAll:  title; cr ; 
				nextPutAll: self currentUpdateVersionNumber asString; 
				nextPutAll: '
-----

';
				nextPutAll: self commentForCurrentUpdate.
			self produceDiffLinksForPackages do: [:each |
				]
				 
			str contents
			].	
	
	UIManager default
		edit: contents
		label: title.