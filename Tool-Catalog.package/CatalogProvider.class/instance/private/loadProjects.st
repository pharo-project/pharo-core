loadProjects
	| jsonString |
	
	jsonString := ZnClient new
		beOneShot;
		url: 'http://catalog.pharo.org/catalog/json';
		get.
		
	^ (STON reader on: jsonString readStream) next
		collect: [ :each | CatalogProject fromDictionary: each ]