publishDependencyGraphButton
	self stream
		<< '<button type="button" class="btn btn-default" onclick="window.open('''
		<< graphFileReference basename
		<< ''')">Dependency graph</button>'; lf