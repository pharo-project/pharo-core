version11: spec
	<version: '1.1' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec author: 'EstebanLorenzano'.
		spec timestamp: '18 March 2014 5:04:20 pm'.
		
		spec project: 'FFI' with: '1.8'.
		spec 
			package: 'Alien' with: 'Alien-eem.20';
			package: 'Alien-MacOSX-Core' with: 'Alien-MacOSX-Core-EstebanLorenzano.11';
			package: 'Alien-MacOSX-AppKit' with: 'Alien-MacOSX-AppKit-John_M_McIntosh.1';
			package: 'Alien-MacOSX-Examples' with: 'Alien-MacOSX-Examples-EstebanLorenzano.6'. ].

	spec for: #'pharo' do: [
		spec package: 'Alien-MacOSX-Pharo' with: 'Alien-MacOSX-Pharo-EstebanLorenzano.1'. ].
