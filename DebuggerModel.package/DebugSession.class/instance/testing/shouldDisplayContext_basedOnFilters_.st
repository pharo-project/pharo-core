shouldDisplayContext: aContext basedOnFilters: stackFilters
	"Return true if all filters match the given context, or false otherwise.
	True is returned if there are no filters."
	
	stackFilters do: [ :aFilter | 
		(aFilter shouldDisplay: aContext) ifFalse: [ ^ false ] ].
	^ true 
		
	 