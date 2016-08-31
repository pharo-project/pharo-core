version31: spec
	<version: '3.1' imports: #('0.5-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit Version 3.27'.
		spec author: 'AndreiChis'.
		spec timestamp: '8/25/2016 14:40'.
		spec project: 'GTInspectorCore' with: '3.19'.
		spec 
			package: 'GT-Debugger' with: 'GT-Debugger-TheIntegrator.352';
			package: 'GT-BytecodeDebugger' with: 'GT-BytecodeDebugger-MarcusDenker.32';
			package: 'GT-SUnitDebugger' with: 'GT-SUnitDebugger-TudorGirba.39';
			package: 'GT-Tests-Debugger' with: 'GT-Tests-Debugger-AndreiChis.14'. ].
