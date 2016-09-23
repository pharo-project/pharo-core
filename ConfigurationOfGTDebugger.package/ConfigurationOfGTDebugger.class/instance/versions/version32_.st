version32: spec
	<version: '3.2' imports: #('0.5-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit Version 3.28'.
		spec author: 'AndreiChis'.
		spec timestamp: '9/22/2016 23:31'.
		spec project: 'GTInspectorCore' with: '3.20'.
		spec 
			package: 'GT-Debugger' with: 'GT-Debugger-PavelKrivanek.353';
			package: 'GT-BytecodeDebugger' with: 'GT-BytecodeDebugger-MarcusDenker.32';
			package: 'GT-SUnitDebugger' with: 'GT-SUnitDebugger-TudorGirba.39';
			package: 'GT-Tests-Debugger' with: 'GT-Tests-Debugger-AndreiChis.14'. ].
