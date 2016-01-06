baseline0_9: spec
	<version: '0.9-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'http://www.smalltalkhub.com/mc/Pharo/FFI-NB/main'. 

		self ffi: spec.
		self alien: spec.
		
		spec 
			package: 'FFI-NB' with: [ spec requires: #('FFI' 'Alien') ];
			package: 'FFI-NB-Tests' with: [ spec requires: #('FFI-NB') ];
			package: 'FFI-NB-Legacy' with: [ spec requires: #('FFI-NB') ].
			
		spec 
			group: 'default' with: #('core' 'legacy');
			group: 'core' with: #('FFI-NB' 'FFI-NB-Tests');
			group: 'legacy' with: #('FFI-NB-Legacy') ]