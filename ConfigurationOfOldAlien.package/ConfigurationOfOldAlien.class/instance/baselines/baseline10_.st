baseline10: spec 
	<version: '1.0-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'http://www.squeaksource.com/Alien'. 
		
		spec project: 'FFI' with: [
			spec 
				repository: 'http://www.squeaksource.com/MetacelloRepository';
				className: 'ConfigurationOfFFI';
				version: '1.5' ];
		package: 'Alien' with: [ 
			spec requires: 'FFI' ];
		package: 'Alien-MacOSX-Core' with: [ 
			spec requires: #('Alien') ];
		package: 'Alien-MacOSX-AppKit' with: [ 
			spec requires: #('Alien' 'Alien-MacOSX-Core') ];
		package: 'Alien-MacOSX-Examples' with: [ 
			spec requires: #('Alien' 'Alien-MacOSX-Core') ].
		
	spec group: 'default' with: #('Alien').
	spec group: 'ObjectiveCBridge' with: #('Alien' 'Alien-MacOSX-Core' 'Alien-MacOSX-AppKit').
	spec group: 'ObjectiveCBridge Examples' with: #('ObjectiveCBridge' 'Alien-MacOSX-Examples') ].

	spec for: #pharo do: [
		spec 
			package: 'Alien-MacOSX-Pharo' with: [ 
				spec requires: 'Alien' ].
		spec group: 'ObjectiveCBridge' with: #('Alien' 'Alien-MacOSX-Pharo' 'Alien-MacOSX-Core' 'Alien-MacOSX-AppKit'). ].