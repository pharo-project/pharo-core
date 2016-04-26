compilerSettingsOn: aBuilder
	<systemsettings>
	(aBuilder group: #compiler)
		label: 'Compiler';
		description: 'All Compiler Settings';
		with: [ 
					(aBuilder pickOne: #compilerClass)
						target: SmalltalkImage;
						label: 'Default Compiler';
						domainValues: AbstractCompiler subclasses.
					(aBuilder pickOne: #bytecodeBackend)
						target: CompilationContext;
						label: 'Bytecode Backend';
						domainValues:
								{#V3PlusClosures -> OpalEncoderForV3PlusClosures.
								#SistaV1 -> OpalEncoderForSistaV1 }]