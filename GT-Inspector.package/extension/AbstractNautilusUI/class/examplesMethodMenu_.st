examplesMethodMenu: aBuilder
	<contextMenu>
	<nautilusGlobalMethodMenu>
	^ GTExampleNautilus new
		onCompiledMethod: aBuilder;
		yourself