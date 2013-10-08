protocolSearchIn: aCollection
	| rawList |
	
	rawList := aCollection sort.
	
	^ ListDialogWindow new
				getList: [ :r| rawList select: [:e | r search: e ]];
				displayBlock: [:e | e ];
				title: 'Protocol search';
				yourself. 