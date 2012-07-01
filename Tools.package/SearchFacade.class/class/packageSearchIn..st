package search
packageSearchIn: anEnvironment 
	| rawList |
	
	rawList := anEnvironment organization categories sorted.
	
	^ ListDialogWindow new
				getList: [ :r| rawList select: [:e | r search: e ]];
				displayBlock: [:e | e ];
				title: 'Package search';
				yourself. 