finderMenuOn: aBuilder
	<worldMenu>
	(aBuilder item: #Komitter)
		action: [
			KomitStagingArea resetCurrent.
			Komitter new
				stagingArea: KomitStagingArea current;
				openAndCommitToMonticello ];
		order: 0;
		parent: #Tools;
		help: 'Cherry pick what you commit';
		icon: self taskbarIcon