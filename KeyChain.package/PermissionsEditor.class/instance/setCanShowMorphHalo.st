initialize
setCanShowMorphHalo
	canShowMorphHalo
		state: false;
		enabled: false;
		whenChangedDo: [ self checkRoot ];
		label: 'Can show halo of morphs ?'