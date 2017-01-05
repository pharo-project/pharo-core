version0107: spec
	<version: '0.10.7' imports: #('0.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Fix For case 19493 and
		18873: FastTable doesn''t scroll on widget resize.
		19265: FastTable: right click on a selected element can remove selection if it is not the main selection.
		19492: FastTable does not reset scrollbar'.
		spec author: 'NicolaiHess'.
		spec timestamp: '12/23/2016 00:27'.
		spec 
			package: #'Morphic-Widgets-FastTable' with: 'Morphic-Widgets-FastTable-NicolaiHess.200';
			package: 'Glamour-FastTable' with: 'Glamour-FastTable-PabloTesone.60'. ].
