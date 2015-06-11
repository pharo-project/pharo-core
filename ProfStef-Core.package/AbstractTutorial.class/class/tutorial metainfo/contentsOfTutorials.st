contentsOfTutorials
	^ String
		streamContents: [ :aStream | 
			self tutorials
				do: [ :aTutorial | 
					aStream
						nextPutAll: aTutorial title;
						cr;
						tab;
						nextPutAll: 'PharoTutorial goOn: ';
						nextPutAll: aTutorial name;
						cr;
						cr ] ]