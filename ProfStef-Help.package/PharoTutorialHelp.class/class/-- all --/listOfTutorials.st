listOfTutorials 
	|contents|
	
	contents := String streamContents: [:aStream|
		AbstractTutorial tutorials do: [:aTutorial|
			aStream 
				nextPutAll: aTutorial title; cr;
				tab; nextPutAll: 'PharoTutorial goOn:'; nextPutAll: aTutorial name;
				cr;cr.
		]
	].

	^ HelpTopic 
		title: 'List of tutorials' 
		contents: contents.