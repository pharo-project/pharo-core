version326: spec
	<version: '3.26' imports: #('3.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Prevent infinite loop in GLMScrollListBrick>>#preventOverscrolling
 - in some cases it was moving band to the top and to the bottom.'.
		spec author: 'JurajKubelka'.
		spec timestamp: '7/21/2016 18:06'.
		spec 
			project: 'GTPlaygroundCore' with: '3.14';
			project: 'GTInspectorCore' with: '3.18';
			project: 'GTSpotter' with: '2.15';
			project: 'GTDebugger' with: '2.13'. ].
