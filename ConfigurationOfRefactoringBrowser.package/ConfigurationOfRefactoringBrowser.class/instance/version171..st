versions
version171: spec
	<version: '1.7.1' imports: #('1.7-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: 'RefactoringBrowser for tODE and GLASS 1.0-beta.8.7'.
		spec author: 'dkh'.
		spec timestamp: '07/19/2011 11:50'.
	].

	spec for: #'pharo' do: [
		spec 
			
			package: 'AST-Core' with: 'AST-Core-lr.87';
			package: 'AST-Tests-Core' with: 'AST-Tests-Core-lr.11';
			
			package: 'AST-Semantic' with: 'AST-Semantic-lr.15';
			package: 'AST-Tests-Semantic' with: 'AST-Tests-Semantic-lr.3';
			
			package: 'Refactoring-Environment' with: 'Refactoring-Environment-lr.7';
			package: 'Refactoring-Tests-Environment' with: 'Refactoring-Tests-Environment-lr.1';
			
			package: 'Refactoring-Changes' with: 'Refactoring-Changes-lr.18';
			package: 'Refactoring-Tests-Changes' with: 'Refactoring-Tests-Changes-lr.14';
		
			package: 'Refactoring-Core' with: 'Refactoring-Core-lr.153';
			package: 'Refactoring-Tests-Core' with: 'Refactoring-Tests-Core-lr.51';
			
			package: 'Refactoring-Critics' with: 'Refactoring-Critics-lr.9';
			package: 'Refactoring-Tests-Critics' with: 'Refactoring-Tests-Critics-lr.3';
		
			package: 'Refactoring-Spelling' with: 'Refactoring-Spelling-pmm.25';
			package: 'Refactoring-Tests-Spelling' with: 'Refactoring-Tests-Spelling-lr.6'.
	
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
		spec author: 'dkh'.
		spec project: 'GsCore' with: '0.245'.
		spec 
			package: 'AST-Core' with: 'AST-Core-dkh.85';
			package: 'AST-Tests-Core' with: 'AST-Tests-Core-DaleHenrichs.11'.].