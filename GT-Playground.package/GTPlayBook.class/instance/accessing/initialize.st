initialize
	|files|
	files := ((self class cacheDirectory files 
		select: [ :each | each extension = 'ph' ])) 
		sorted: [:a :b | a modificationTime > b modificationTime ].
	files size > 100 ifTrue: [files := files first: 100]. 
	pages := OrderedCollection new.
	files do: [ :each | 
		[ pages add: (GTPlayPage new 
						silentContent: (each readStreamDo: #contents); 
						modificationTime: each modificationTime) ]
			on: Error 
			do: [  ] ]