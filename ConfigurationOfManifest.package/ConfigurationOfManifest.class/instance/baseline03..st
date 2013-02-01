baseline
baseline03: spec
	<version: '0.3-baseline'>
	spec for: #common do: [
		spec blessing: #baseline.
	].	
	
	spec for: #pharo do: [
		spec
			repository: 'http://ss3.gemstone.com/ss/Pharo14';
			package: 'AST-Core';		
			package: 'AST-Semantic' with: [ spec requires: 'AST-Core'];
			package: 'Refactoring-Core'; 
			package: 'Refactoring-Environment'; 
			package: 'Refactoring-Changes' with: [ spec requires: 'Refactoring-Environment'];		
			package: 'Refactoring-Critics' with: [spec requires: 'Refactoring-Environment'; requires: 'Refactoring-Changes'].
			
		spec
			repository: 'http://www.squeaksource.com/DirtyExperiments' username: 'BVR' password: 'Nemesis';
			package: 'Spec'.
			
			spec	
			repository: 'http://www.squeaksource.com/PharoTaskForces';
			package: 'Manifest-Core' ;
			package: 'Manifest-Tools' with: [spec requires: 'Refactoring-Critics'; requires: 'AST-Semantic'];		
			package: 'Manifest-Resources-Tests';
			package: 'Manifest-Tests' 
				with: [ spec requires: 'Manifest-Core'; requires: 'Manifest-Resources-Tests' ].
			] 
		
