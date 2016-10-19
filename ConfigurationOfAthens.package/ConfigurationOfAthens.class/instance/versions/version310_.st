version310: spec
	<version: '3.10' imports: #('2.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: 'Fix text rendering for windows + remove nonworking example in text.'.
		spec author: 'HenrikNergaard'.
		spec timestamp: '10/18/2016 22:14'.
		spec project: 'XMLParser' .
		spec 
			package: 'Athens-Core' with: 'Athens-Core-AliakseiSyrel.57';
			package: 'Athens-Text' with: 'Athens-Text-HenrikNergaard.17';
			package: 'Athens-Balloon' with: 'Athens-Balloon-MarcusDenker.20';
			package: 'Athens-Morphic' with: 'Athens-Morphic-TheIntegrator.67';
			package: 'Athens-CairoPools' with: 'Athens-CairoPools-NicolaiHess.14';
			package: 'Athens-Cairo' with: 'Athens-Cairo-HenrikNergaard.124';
			package: 'Athens-Examples' with: 'Athens-Examples-TheIntegrator.47';
			package: 'Athens-Tutorial' with: 'Athens-Tutorial';
			package: 'Athens-SVG' with: 'Athens-SVG'. ].
