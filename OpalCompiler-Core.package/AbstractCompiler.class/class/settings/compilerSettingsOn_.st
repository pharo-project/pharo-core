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
						default: true.
					(aBuilder setting: #allowBlockArgumentAssignment)
						target: CompilationContext;
						label: 'Allow block argument assignment' translated;
						description: 'If enabled, the compiler will allow assignment into block arguments.
This provides backward compatibility.' translated;
						default:true.]