version0103: spec
	<version: '0.10.3' imports: #('0.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Fix for case 18405 + min width/height and specify that the container clips its submorps, so that it will not report damage outside of its bounds'.
		spec author: 'HenrikNergaard'.
		spec timestamp: '7/16/2016 19:21'.
		spec 
			package: #'Morphic-Widgets-FastTable' with: 'Morphic-Widgets-FastTable-HenrikNergaard.186';
			package: 'Glamour-FastTable' with: 'Glamour-FastTable-AndreiChis.59'. ].
