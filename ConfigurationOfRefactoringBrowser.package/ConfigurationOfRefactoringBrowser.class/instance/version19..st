versions
version19: spec
	<version: '1.9' imports: #('1.8-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec description: 'RefactoringBrowser for pharo 1.4 alpha. For this version we just move the place to look for Refactoring-Changes. Now there is a project for RB for pharo: It is called PharoRB. Updating it to latest lukas changes and enhancements'.
		spec author: 'StephaneDucasse'.
		spec timestamp: '2011-09-30T10:42:42+00:00'. "DateAndTime now asString"
	].

	spec for: #'pharo' do: [
		spec 
			package: 'AST-Core' with: 'AST-Core-lr.89';
			package: 'AST-Tests-Core' with: 'AST-Tests-Core-lr.13';
			
			package: 'AST-Semantic' with: 'AST-Semantic-lr.15';
			package: 'AST-Tests-Semantic' with: 'AST-Tests-Semantic-cwp.4';
			
			package: 'Refactoring-Environment' with: 'Refactoring-Environment-lr.7';
			package: 'Refactoring-Tests-Environment' with: 'Refactoring-Tests-Environment-lr.1';
			
			package: 'Refactoring-Changes' with: 'Refactoring-Changes-StephaneDucasse.18';
			package: 'Refactoring-Tests-Changes' with: 'Refactoring-Tests-Changes-lr.15';
		
			package: 'Refactoring-Core' with: 'Refactoring-Core-lr.154';
			package: 'Refactoring-Tests-Core' with: 'Refactoring-Tests-Core-lr.54';
			
			package: 'Refactoring-Critics' with: 'Refactoring-Critics-lr.13';
			package: 'Refactoring-Tests-Critics' with: 'Refactoring-Tests-Critics-lr.4';
		
			package: 'Refactoring-Spelling' with: 'Refactoring-Spelling-pmm.27';
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