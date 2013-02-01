accessing
version
	"Return the version number string of the Virtual machine built"
	"
	Smalltalk vm version
	"
	^ String streamContents: [ :s |
		1007 to: 1009 do: [:n| 
			s nextPutAll: (self getSystemAttribute: n); cr ]]