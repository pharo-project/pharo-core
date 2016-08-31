version30: spec
	<version: '3.0' imports: #('0.5-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Moose 6.0 release'.
		spec author: 'TudorGirba'.
		spec timestamp: '8/14/2016 20:44'.
		spec project: 'GTInspectorCore' with: #'stable'.
		spec 
			package: 'GT-Debugger' with: 'GT-Debugger-TheIntegrator.352';
			package: 'GT-BytecodeDebugger' with: 'GT-BytecodeDebugger-MarcusDenker.32';
			package: 'GT-SUnitDebugger' with: 'GT-SUnitDebugger-TudorGirba.39';
			package: 'GT-Tests-Debugger' with: 'GT-Tests-Debugger-AndreiChis.14'. ].
