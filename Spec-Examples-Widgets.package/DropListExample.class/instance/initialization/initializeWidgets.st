initializeWidgets 

	uniformDropList := self newDropList.
	heterogeneousDropList  := self newDropList.

	uniformDropList
		items: {morph1. morph2. morph3};
		displayBlock: [ :m | m color name capitalized, ' morph' ];
		whenSelectedItemChanged: [ :m |
			container removeAllMorphs.
			container addMorph: m ].
	
	heterogeneousDropList
		addItemLabeled: 'Open workspace' do: [ Workspace open ];
		addItemLabeled: 'Inspect current morph' do: [ uniformDropList selectedItem inspect ].
	
	"If this is uncommented, it will fire the action of the first item, which is not what we want:
	heterogeneousDropList setSelectedIndex: 1.
	same for:
	heterogeneousDropList setIndex: 1"
	
	self setFocus.