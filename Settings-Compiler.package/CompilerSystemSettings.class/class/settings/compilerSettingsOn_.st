compilerSettingsOn: aBuilder
	<systemsettings> 
	(aBuilder group: #compiler) 
		label: 'Compiler';  
		with: [
			(aBuilder pickOne: #compilerClass)
			      target: SmalltalkImage;
				label: 'Default Compiler';
				domainValues: {Compiler. OpalCompiler}.
			(aBuilder setting: #warningAllowed)
			      target: CompilationContext;
				label: 'Allow Warnings';
				default: true]