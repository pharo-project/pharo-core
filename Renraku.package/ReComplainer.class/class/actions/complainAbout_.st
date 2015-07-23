complainAbout: aReCritic
	[ 
	ZnClient new
		beOneShot;
		http;
		host: 'renraku.inf.usi.ch';
		addPath: 'complaints';
		formAt: 'uuid' put: self uuid asString;
		formAt: 'pharoVersion' put: SystemVersion current highestUpdate asString;
		formAt: 'author' put: Author fullName;
		formAt: 'rule' put: aReCritic rule class name;
		formAt: 'target' put: aReCritic target name;
		formAt: 'time' put: DateAndTime now asString;
		post ]
		on: NetworkError
		do: [ :ex | ^ false ].
		
	^ true