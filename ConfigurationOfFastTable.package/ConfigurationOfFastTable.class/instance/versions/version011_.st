version011: spec
	<version: '0.11' imports: #('0.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Syncronize with Pharo'.
		spec author: 'AndreiChis'.
		spec timestamp: '2/20/2017 16:27'.
		spec 
			package: #'Morphic-Widgets-FastTable' with: 'Morphic-Widgets-FastTable-TheIntegrator.210';
			package: 'Glamour-FastTable' with: 'Glamour-FastTable-AndreiChis.75'. ].
