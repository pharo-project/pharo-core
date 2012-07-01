world menu items
quitItemsOn: aBuilder 
	<worldMenu>
	(aBuilder group: #QuitPharo)
		order: 9999; 
		with: [
			(aBuilder item: #'Save')
				target: self;
				selector: #saveSession;
				help: 'save the current version of the image on disk';
				icon: UITheme current smallSaveIcon.
			(aBuilder item: #'Save as...')
				target: self;
				selector: #saveAs;
				help: 'save the current version of the image on disk under a new name.';
				icon: UITheme current smallSaveAsIcon.
			(aBuilder item: #'Save and quit')
				target: self;
				selector: #saveAndQuit;
				help: 'save the current image on disk, and quit Pharo.';
				icon: UITheme current smallQuitIcon.
			(aBuilder item: #'Quit')
				target: self;
				selector: #quitSession;
				help: 'quit Pharo.';
				icon: UITheme current smallQuitIcon]