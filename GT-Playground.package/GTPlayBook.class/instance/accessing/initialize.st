initialize
	|files|
	files := ((self class cacheDirectory files 
		select: [ :each | each extension = 'ph' ])).
	files size > 100 ifTrue: [files := files first: 100]. 
	pages := OrderedCollection new.
	files do: [ :each | 
		[ pages add: (GTPlayPage new silentContent: (each readStreamDo: #contents)) ]
			on: Error 
			do: [  ] ]