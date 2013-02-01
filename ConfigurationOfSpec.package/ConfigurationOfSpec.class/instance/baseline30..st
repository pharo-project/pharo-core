baselines
baseline30: spec 
	<version: '3.0-baseline'>
	
	spec for: #pharo do: [
		
		"Info"
		spec blessing: #baseline.
		spec repository: 'http://ss3.gemstone.com/ss/Spec'.
		
		"Our own stuff"
		spec 
			package: 'Spec-Builder' with: [ spec requires: #('Spec-Core' 'Spec-Widgets') ];
			package: 'Spec-Core' with: [ spec requires: #('Spec-Bindings') ];
			package: 'Spec-Bindings';
			package: 'Spec-Examples' with: [ spec requires: #('Spec-Core' 'Spec-Widgets') ];
			package: 'Spec-Tests' with: [ spec requires: #('Spec-Core') ];
			package: 'Spec-Tools'  with: [ spec requires: #('Spec-Core' 'Spec-Widgets') ];
			package: 'Spec-Widgets'.
			
		spec 
			group: 'basic' with: #('core' 'Spec-Widgets');
			group: 'core' with: #('Spec-Core' 'Spec-Tests');
			group: 'full' with: #('default' 'Spec-Examples');
			group: 'default' with: #('basic' 'Spec-Tools');
			group: 'builder' with: #('basic' 'Spec-Builder') ]