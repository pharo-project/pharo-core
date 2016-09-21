version0104: spec
	<version: '0.10.4' imports: #('0.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Fix for case 19116 - FTRootItem>>expandAll sends deprecated #name message'.
		spec author: 'PavelKrivanek'.
		spec timestamp: '9/21/2016 09:08'.
		spec 
			package: #'Morphic-Widgets-FastTable' with: 'Morphic-Widgets-FastTable-TorstenBergmann.190';
			package: 'Glamour-FastTable' with: 'Glamour-FastTable-AndreiChis.59'. ].
