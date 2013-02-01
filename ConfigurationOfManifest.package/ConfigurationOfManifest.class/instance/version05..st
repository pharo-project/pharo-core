version
version05: spec
	<version: '0.5' imports: #('0.3-baseline')>
	
	spec for: #pharo do: [ 
		
		spec
			package: 'AST-Core' with: 'AST-Core-StephaneDucasse.90';
			package: 'AST-Semantic' with: 'AST-Semantic-StephaneDucasse.16' ;
			package: 'Refactoring-Core' with: 'Refactoring-Core-StephaneDucasse.154';
			package: 'Refactoring-Environment' with: 'Refactoring-Environment-StephaneDucasse.9';
			package: 'Refactoring-Changes' with: 	'Refactoring-Changes-StephaneDucasse.18' ;
			package: 'Refactoring-Critics' with: 	'Refactoring-Critics-MarcusDenker.13';
			package: 'Spec' with: 'Spec-BenjaminVanRyseghem.34';
			package: 'Manifest-Core' with: 'Manifest-Core-StephaneDucasse.23';
			package: 'Manifest-Tools' with: 'Manifest-Tools-StephaneDucasse.2';
			package: 'Manifest-Resources-Tests' with: 	'Manifest-Resources-Tests-SimonAllier.2' ;
			package: 'Manifest-Tests' with: 	'Manifest-Tests-SimonAllier.6'.
			].