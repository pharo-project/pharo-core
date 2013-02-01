baseline
baseline05: spec
	<version: '0.5-baseline'>
	spec for: #common do: [
		spec blessing: #baseline.
	].	
	
	spec for: #pharo do: [
				spec project: 'RBCore' with: [
			spec 
				className: 'ConfigurationOfRefactoringBrowser';
				versionString: #stable;
				loads: 'Core';
				repository: 'http://www.squeaksource.com/MetacelloRepository'].
			
		spec project: 'Refactoring-Environment' copyFrom: 'RBCore' with: [
				spec loads: #('Refactoring-Environment' ) ].
			
		spec project: 'Spec' with: [
			spec 
				className: 'ConfigurationOfSpec';
				versionString: #'stable';
				loads: #('basic');
				repository: 'http://ss3.gemstone.com/ss/Spec'].		
			
		spec	
			repository: 'http://www.squeaksource.com/PharoTaskForces';
			package: 'Manifest-Core'  with: [spec requires: 'RBCore'; requires: 'Spec'];
			package: 'Manifest-Resources-Tests';
			package: 'Manifest-Tests' 
				with: [ spec requires: 'Manifest-Core'; requires: 'Manifest-Resources-Tests' ].
			 
		]
