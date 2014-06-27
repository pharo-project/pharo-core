browseVersions
	"Browse the method versions."

	| aSelector |
	aSelector := self selectedMessageName ifNil: [^self].
	Smalltalk tools versionBrowser 
			browseVersionsForClass: self selectedChangeWrapper actualClass selector: aSelector
			