version38: spec
	<version: '3.8' imports: #('0.5-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit version 3.26'.
		spec author: 'AndreiChis'.
		spec timestamp: '2/11/2017 18:13'.
		spec project: 'GTInspectorCore' with: '3.26'.
		spec 
			package: 'GT-Debugger' with: 'GT-Debugger-AliakseiSyrel.369';
			package: 'GT-BytecodeDebugger' with: 'GT-BytecodeDebugger-AndreiChis.33';
			package: 'GT-SUnitDebugger' with: 'GT-SUnitDebugger-TudorGirba.39';
			package: 'GT-Tests-Debugger' with: 'GT-Tests-Debugger-AndreiChis.14'. ].
