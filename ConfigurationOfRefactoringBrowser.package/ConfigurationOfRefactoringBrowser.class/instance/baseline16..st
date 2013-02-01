baselines
baseline16: spec 
	<version: '1.6-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
	].
	
	spec for: #squeakCommon do: [
		spec repository: 'http://www.squeaksource.com/rb'.
		spec 
			package: 'AST-Core';
			package: 'AST-Tests-Core' with: [ spec requires: 'AST-Core' ];
			
			package: 'AST-Semantic' with: [ spec requires: 'AST-Core' ];
			package: 'AST-Tests-Semantic' with: [ spec requires: 'AST-Semantic' ];
			
			package: 'Refactoring-Environment' with: [ spec requires: 'AST-Core' ];
			package: 'Refactoring-Tests-Environment' with: [ spec requires: 'Refactoring-Environment' ];
			
			package: 'Refactoring-Changes' with: [ spec requires: 'Refactoring-Environment' ];
			package: 'Refactoring-Tests-Changes' with: [ spec requires: 'Refactoring-Changes' ];
		
			package: 'Refactoring-Core' with: [ spec requires: 'Refactoring-Changes' ];
			package: 'Refactoring-Tests-Core' with: [ spec requires: 'Refactoring-Core' ];
			
			package: 'Refactoring-Critics' with: [ spec requires: 'Refactoring-Changes' ];
			package: 'Refactoring-Tests-Critics' with: [ spec requires: 'Refactoring-Critics' ];
		
			package: 'Refactoring-Spelling' with: [ 
				spec requires: 'Refactoring-Critics'.
				spec postLoadDoIt: #postLoadRBSpelling ];
			package: 'Refactoring-Tests-Spelling' with: [ spec requires: 'Refactoring-Tests-Critics'. ].
	
		spec
			group: 'default' with: #('Core' );
			group: 'Core' with: #( 'AST-Core' 'AST-Semantic' 'Refactoring-Environment'  'Refactoring-Changes' 'Refactoring-Core'  'Refactoring-Critics' 'Refactoring-Spelling'  );
			group: 'Tests' with: #( 'AST-Tests-Core'  'AST-Tests-Semantic' 'Refactoring-Tests-Environment'  'Refactoring-Tests-Changes'  'Refactoring-Tests-Core' 'Refactoring-Tests-Critics' 'Refactoring-Tests-Spelling' );
			group: 'Core Tests' with: #('Core' 'Tests' );
			
			yourself.
	].
	spec for: #gemstone do: [
		spec repository: 'http://seaside.gemstone.com/ss/rb'.

		spec 
			project: 'GsCore' with: [
				spec
					className: 'ConfigurationOfGsCore';
					versionString: '0.239-baseline';
					file: 'ConfigurationOfGsCore';
					repository: 'http://seaside.gemstone.com/ss/MetacelloRepository' ];
			yourself.

		spec
			package: 'AST-Core' with: [ spec requires: 'GsCore' ];
			package: 'AST-Tests-Core' with: [ spec requires: 'AST-Core' ];
			yourself.

		spec
			group: 'default' with: #('Core' );
			group: 'Core' with: #( 'AST-Core' );
			group: 'Tests' with: #( 'AST-Tests-Core' );
			group: 'Core Tests' with: #('Core' 'Tests' );
			
			yourself.
	].