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
								{IRSqueakV3PlusClosuresBytecodeGenerator.
									IRSistaV1BytecodeGenerator}.
					(aBuilder setting: #warningAllowed)
						target: CompilationContext;
						label: 'Allow Warnings';
						default: true ]