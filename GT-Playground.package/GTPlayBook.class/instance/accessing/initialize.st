initialize
	|files|
	files := ((self class cacheDirectory files 
		select: [ :each | each extension = 'ph' ])).
	files size > 100 ifTrue: [files := files first: 100]. 
	pages := (files collect: [ :each | GTPlayPage new content: (each readStreamDo: #contents) ]) asOrderedCollection 