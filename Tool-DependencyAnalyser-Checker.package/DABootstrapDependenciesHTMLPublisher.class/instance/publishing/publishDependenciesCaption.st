publishDependenciesCaption
	self stream lf;
		<< (self warningLabel: 'Ignored dependency'); lf;
		<< (self dangerLabel: 'Package to remove from the bootstrap'); lf