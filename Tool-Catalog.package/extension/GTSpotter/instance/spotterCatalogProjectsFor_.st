spotterCatalogProjectsFor: aStep
	<spotterOrder: 90>
	
	aStep listProcessor			 
			allCandidates: [ CatalogProvider new refresh projects ];
			title: 'Catalog Projects';
			itemName: [ :item | item name ];
			itemIcon: [ :item | CatalogBrowser iconFor: item ];
			filter: GTFilterSubstring;
			actLogic: [ :item | item installStableVersion ];
			wantsToDisplayOnEmptyQuery: true