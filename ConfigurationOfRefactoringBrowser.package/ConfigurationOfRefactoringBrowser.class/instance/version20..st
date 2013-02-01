versions
version20: spec
	<version: '2.0' imports: #('1.9-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec description: 'Version for pharo 1.4'.
		spec author: 'Guillermo Polito'.
		spec timestamp:  '2012-01-22T01:01:20.39-03:00'. "DateAndTime now asString"
	].

	spec for: #'pharo' do: [
		spec 
			package: 'AST-Core' with: 'AST-Core-lr.92';
			package: 'AST-Tests-Core' with: 'AST-Tests-Core-lr.14';
			
			package: 'AST-Semantic' with: 'AST-Semantic-lr.15';
			package: 'AST-Tests-Semantic' with: 'AST-Tests-Semantic-cwp.4';
			
			package: 'Refactoring-Environment' with: 'Refactoring-Environment-lr.9';
			package: 'Refactoring-Tests-Environment' with: 'Refactoring-Tests-Environment-lr.4';
			
			package: 'Refactoring-Changes' with: 'Refactoring-Changes-cwp.20';
			package: 'Refactoring-Tests-Changes' with: 'Refactoring-Tests-Changes-lr.16';
		
			package: 'Refactoring-Core' with: 'Refactoring-Core-lr.156';
			package: 'Refactoring-Tests-Core' with: 'Refactoring-Tests-Core-lr.56';
			
			package: 'Refactoring-Critics' with: 'Refactoring-Critics-lr.13';
			package: 'Refactoring-Tests-Critics' with: 'Refactoring-Tests-Critics-lr.4';
		
			package: 'Refactoring-Spelling' with: 'Refactoring-Spelling-GuillermoPolito.28';
			package: 'Refactoring-Tests-Spelling' with: 'Refactoring-Tests-Spelling-lr.9';
			package: 'Refactoring-Pharo-Platform' with: 'Refactoring-Pharo-Platform-lr.1'.
	].
	
	spec for: #'squeak' do: [
		spec description: 'Squeak support based on Squeak4.2-Trunk-10628'.
		spec 
			package: 'AST-Core' with: 'AST-Core-lr.85';
			package: 'AST-Semantic' with: 'AST-Semantic-lr.15';
			package: 'Refactoring-Core' with: 'Refactoring-Core-lr.153';
			package: 'Refactoring-Environment' with: 'Refactoring-Environment-lr.4';
			package: 'Refactoring-Critics' with: 'Refactoring-Critics-lr.4';
			package: 'Refactoring-Spelling' with: 'Refactoring-Spelling-lr.23';
			package: 'Refactoring-Changes' with: 'Refactoring-Changes-lr.16'].
	spec for: #'gemstone' do: [
		spec author: 'DaleHenrichs'.
		spec project: 'GsCore' with: '0.241'.
		spec 
			package: 'AST-Core' with: 'AST-Core-DaleHenrichs.84';
			package: 'AST-Tests-Core' with: 'AST-Tests-Core-DaleHenrichs.11'.].