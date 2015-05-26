initializeWidgets 

	uniformDropList := self newDropList.
	heterogeneousDropList  := self newDropList.

	uniformDropList
		items: {morph1. morph2. morph3};
		displayBlock: [ :m | m color name capitalized, ' morph' ];
		iconHolder: [:e| Smalltalk ui icons testGreenIcon ];
		whenSelectedItemChanged: [ :m |
			container removeAllMorphs.
			container addMorph: m ].
	
	heterogeneousDropList
		addItemLabeled: 'Open workspace' do: [ Workspace open ] icon: Smalltalk ui icons smallOkIcon;
		addItemLabeled: 'Inspect current morph' do: [ uniformDropList selectedItem inspect ] icon: Smalltalk ui icons testRedIcon.
	
	"If this is uncommented, it will fire the action of the first item, which is not what we want:
	heterogeneousDropList setSelectedIndex: 1.
	same for:
	heterogeneousDropList setIndex: 1"
	uniformDropList setIndex: 1.
	
	self setFocus.