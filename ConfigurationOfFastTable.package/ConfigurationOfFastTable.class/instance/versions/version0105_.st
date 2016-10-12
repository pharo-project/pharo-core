version0105: spec
	<version: '0.10.5' imports: #('0.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Fix for case 19199 - Enable / Disable options in context Menu in FastTable'.
		spec author: 'PabloTesone'.
		spec timestamp: '11/10/2016 11:45'.
		spec 
			package: #'Morphic-Widgets-FastTable' with: 'Morphic-Widgets-FastTable-TorstenBergmann.190';
			package: 'Glamour-FastTable' with: 'Glamour-FastTable-PabloTesone.60'. ].
