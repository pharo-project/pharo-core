compilerSettingsOn: aBuilder
	<systemsettings> 
	(aBuilder group: #compiler) 
		label: 'Compiler';  
		with: [
			(aBuilder pickOne: #compilerClass)
			      target: SmalltalkImage;
				label: 'Default Compiler';
				domainValues: {Compiler. OpalCompiler}]