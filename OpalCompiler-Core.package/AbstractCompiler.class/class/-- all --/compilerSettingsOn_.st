compilerSettingsOn: aBuilder
	<systemsettings>
	(aBuilder group: #compiler)
		label: 'Compiler';
		with: [ 
					(aBuilder pickOne: #compilerClass)
						target: SmalltalkImage;
						label: 'Default Compiler';
						domainValues: AbstractCompiler subclasses.
					(aBuilder pickOne: #bytecodeBackend)
						target: CompilationContext;
						label: 'Bytecode Backend';
						domainValues:
								{#V3PlusClosures -> EncoderForV3PlusClosures.
								#SistaV1 -> EncoderForSistaV1 }.
					(aBuilder setting: #warningAllowed)
						target: CompilationContext;
						label: 'Allow Warnings';
						default: true]