packageNames

	^ self allManagers collect: [ :pck | pck package name asSymbol ]