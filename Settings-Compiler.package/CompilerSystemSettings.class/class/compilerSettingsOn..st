settings
compilerSettingsOn: aBuilder
	<systemsettings> 
	(aBuilder group: #compiler) 
		label: 'Compiler';  
		with: [
			(aBuilder setting: #warningAllowed)
				label: 'More warnings' translated;
				target: Parser;
				description: 'Ask the user for certain situation such as use of undefined variables' translated.
			(aBuilder setting: #allowBlockArgumentAssignment)
				label: 'Allow block argument assignment' translated;
				target: Parser;
				description: 'If enabled, the compiler will allow assignment into block arguments.
This provides backward compatibility with the pre-closure compiler.' translated.
			(aBuilder setting: #allowUnderscoreAsAssignment)
				label: 'Allow underscore as assignment' translated;
				target: Scanner;
				description: 'If enabled, the compiler will accept _ (underscore) for assignment.
If disabled, the compiler will accept identifiers with underscore characters.
This provides backward compatibility with the pre-ANSI compiler.' translated].

