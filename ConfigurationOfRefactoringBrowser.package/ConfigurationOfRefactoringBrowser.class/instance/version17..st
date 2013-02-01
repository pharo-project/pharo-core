versions
version17: spec
	<version: '1.7' imports: #('1.7-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec description: 'RefactoringBrowser for pharo 1.3 beta'.
		spec author: 'MarianoMartinezPeck'.
		spec timestamp: '09/26/2010 17:23:46'.
	].

	spec for: #'pharo' do: [
		spec 
			
			package: 'AST-Core' with: 'AST-Core-lr.89';
			package: 'AST-Tests-Core' with: 'AST-Tests-Core-lr.13';
			
			package: 'AST-Semantic' with: 'AST-Semantic-lr.15';
			package: 'AST-Tests-Semantic' with: 'AST-Tests-Semantic-cwp.4';
			
			package: 'Refactoring-Environment' with: 'Refactoring-Environment-lr.9';
			package: 'Refactoring-Tests-Environment' with: 'Refactoring-Tests-Environment-lr.3';
			
			package: 'Refactoring-Changes' with: 'Refactoring-Changes-lr.18';
			package: 'Refactoring-Tests-Changes' with: 'Refactoring-Tests-Changes-lr.15';
		
			package: 'Refactoring-Core' with: 'Refactoring-Core-lr.154';
			package: 'Refactoring-Tests-Core' with: 'Refactoring-Tests-Core-lr.54';
			
			package: 'Refactoring-Critics' with: 'Refactoring-Critics-lr.13';
			package: 'Refactoring-Tests-Critics' with: 'Refactoring-Tests-Critics-lr.4';
		
			package: 'Refactoring-Spelling' with: 'Refactoring-Spelling-lr.27';
			package: 'Refactoring-Tests-Spelling' with: 'Refactoring-Tests-Spelling-lr.8'.
	
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