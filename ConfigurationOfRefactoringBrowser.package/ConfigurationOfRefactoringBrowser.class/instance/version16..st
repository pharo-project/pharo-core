versions
version16: spec
	<version: '1.6' imports: #('1.6-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: '-  '.
		spec author: 'MarianoMartinezPeck'.
		spec timestamp: '09/26/2010 17:23:46'.
	].

	spec for: #'pharo' do: [
		spec 
			
			package: 'AST-Core' with: 'AST-Core-lr.84';
			package: 'AST-Tests-Core' with: 'AST-Tests-Core-lr.11';
			
			package: 'AST-Semantic' with: 'AST-Semantic-lr.15';
			package: 'AST-Tests-Semantic' with: 'AST-Tests-Semantic-lr.3';
			
			package: 'Refactoring-Environment' with: 'Refactoring-Environment-lr.4';
			package: 'Refactoring-Tests-Environment' with: 'Refactoring-Tests-Environment-lr.1';
			
			package: 'Refactoring-Changes' with: 'Refactoring-Changes-lr.8';
			package: 'Refactoring-Tests-Changes' with: 'Refactoring-Tests-Changes-lr.8';
		
			package: 'Refactoring-Core' with: 'Refactoring-Core-lr.151';
			package: 'Refactoring-Tests-Core' with: 'Refactoring-Tests-Core-lr.49';
			
			package: 'Refactoring-Critics' with: 'Refactoring-Critics-lr.4';
			package: 'Refactoring-Tests-Critics' with: 'Refactoring-Tests-Critics-lr.3';
		
			package: 'Refactoring-Spelling' with: 'Refactoring-Spelling-lr.23';
			package: 'Refactoring-Tests-Spelling' with: 'Refactoring-Tests-Spelling-lr.5'.
	
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