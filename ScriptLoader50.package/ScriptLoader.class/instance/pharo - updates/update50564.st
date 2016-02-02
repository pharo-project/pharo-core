update50564
	"self new update50564"
	
(Character methods select:[:s | s trailer kind = #TempsNamesQCompress]) 
    do: [ :method 
        |  Character compile: method sourceCode classified: method category].
	self withUpdateLog: '17366 wrong TempsNamesQCompress method trailer ?
	https://pharo.fogbugz.com/f/cases/17366

17406 Renaming a class using the class menu "rename" option allows for non-capitalized class name
	https://pharo.fogbugz.com/f/cases/17406'.
	self loadTogether: self script50564 merge: false.
	self flushCaches.
