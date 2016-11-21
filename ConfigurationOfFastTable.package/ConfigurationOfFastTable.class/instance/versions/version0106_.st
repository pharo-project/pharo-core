version0106: spec
	<version: '0.10.6' imports: #('0.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Fix For case 19369 FastTable: needless position resetting with visible selection'.
		spec author: 'NicolaiHess'.
		spec timestamp: '11/18/2016 12:10'.
		spec 
			package: #'Morphic-Widgets-FastTable' with: 'Morphic-Widgets-FastTable-NicolaiHess.197';
			package: 'Glamour-FastTable' with: 'Glamour-FastTable-PabloTesone.60'. ].
