version012: spec
	<version: '0.12' imports: #('0.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Syncronize with Pharo'.
		spec author: 'AndreiChis'.
		spec timestamp: '3/28/2017 16:30'.
		spec 
			package: #'Morphic-Widgets-FastTable' with: 'Morphic-Widgets-FastTable-TheIntegrator.216';
			package: 'Glamour-FastTable' with: 'Glamour-FastTable-AliakseiSyrel.82'. ].
