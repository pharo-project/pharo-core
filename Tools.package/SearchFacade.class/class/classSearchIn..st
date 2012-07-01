class search
classSearchIn: anEnvironment
	| rawList |
	
	rawList := anEnvironment allClassesAndTraits sorted: [:a :b | a name < b name ].
	^ ListDialogWindow new
				getList: [ :r| rawList select: [:e | r search: e name ]];
				displayBlock: [:e | e name ];
				title: 'Class search';
				yourself.