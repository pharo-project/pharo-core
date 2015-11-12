loadProjects
	| jsonString |
	
	jsonString := ZnClient new
		beOneShot;
		url: CatalogSettings catalogSourceURL;
		get.
		
	^ (STON reader on: jsonString readStream) next
		collect: [ :each | CatalogProject fromDictionary: each ]