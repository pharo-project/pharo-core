version1_2: spec
	<version: '1.2' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec author: 'EstebanLorenzano'.
		spec timestamp: '2015-09-04 12:02'.
		
		spec project: 'FFI' with: '1.10'.
		spec 
			package: 'Alien' with: 'Alien-eem.25';
			package: 'Alien-MacOSX-Core' with: 'Alien-MacOSX-Core-CarlaGriggio.12';
			package: 'Alien-MacOSX-AppKit' with: 'Alien-MacOSX-AppKit-John_M_McIntosh.1';
			package: 'Alien-MacOSX-Examples' with: 'Alien-MacOSX-Examples-EstebanLorenzano.6'. ].

	spec for: #'pharo' do: [
		spec package: 'Alien-MacOSX-Pharo' with: 'Alien-MacOSX-Pharo-EstebanLorenzano.1'. ].
