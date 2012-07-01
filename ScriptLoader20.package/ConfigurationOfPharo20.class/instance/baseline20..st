baselines
baseline20: spec
	"Auto-generated method"
	<version: '2.0-baseline' imports: #('2.0-baseline-kernel' '2.0-baseline-core')>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'http://ss3.gemstone.com/ss/Pharo20' ].
	
	spec for: #pharo do: [
		spec
			package: 'AST-Core';
			package: 'AST-Semantic';
			package: 'Keymapping-Core';
			package: 'Keymapping-Pragmas';
			package: 'Keymapping-Settings';
			package: 'Keymapping-Shortcuts';
			package: 'Keymapping-Tools-Spec';
			package: 'NECompletion';
			package: 'NOCompletion';
			package: 'Polymorph-EventEnhancements';
			package: 'Polymorph-Geometry';
			package: 'Polymorph-TaskbarIcons';
			package: 'Polymorph-Tools-Diff';
			package: 'Polymorph-Widgets';
			package: 'RPackage-Core';
			package: 'RPackage-SystemIntegration';
			package: 'Refactoring-Changes';
			package: 'Refactoring-Core';
			package: 'Refactoring-Critics';
			package: 'Refactoring-Environment';
			package: 'Refactoring-Pharo-Platform';
			package: 'Refactoring-Spelling';
			package: 'Regex-Core';
			package: 'Regex-Help';
			package: 'SUnit-Core';
			package: 'SUnit-Help';
			package: 'SUnit-UI';
			package: 'Graphics-Display Objects';
			package: 'Graphics-External';
			package: 'Graphics-Files';
			package: 'Graphics-Fonts';
			package: 'Graphics-Primitives';
			package: 'Graphics-Resources';
			package: 'Graphics-Support';
			package: 'Graphics-Text';
			package: 'Graphics-Transformations';
			package: 'HelpSystem-Core';
			package: 'Nautilus';
			package: 'Nautilus';
			package: 'NautilusCommon';
			package: 'NautilusRefactoring';
			package: 'Announcements-Tests-Core';
			package: 'BalloonTests';
			package: 'CodeImport-Tests';
			package: 'CollectionsTests';
			package: 'CompilerTests';
			package: 'CompressionTests';
			package: 'FileSystem-Tests-AnsiStreams';
			package: 'FileSystem-Tests-Core';
			package: 'FileSystem-Tests-Disk';
			package: 'FileSystem-Tests-Memory';
			package: 'FreeTypeTests';
			package: 'Gofer-Tests';
			package: 'Graphics-Tests';
			package: 'HelpSystem-Tests';
			package: 'KernelTests';
			package: 'Keymapping-Tests';
			package: 'MorphicTests';
			package: 'Multilingual-Tests';
			package: 'NetworkTests';
			package: 'RPackage-Tests';
			package: 'Regex-Tests-Core';
			package: 'Ring-Tests-Containers';
			package: 'Ring-Tests-Kernel';
			package: 'SUnit-Tests';
			package: 'ShoutTests';
			package: 'Spec-Tests';
			package: 'Tests';
			package: 'ToolsTest';
			package: 'Zinc-Tests';
			package: 'Balloon';
			package: 'Compatibility';
			package: 'Deprecated20';
			package: 'EmergencyEvaluator';
			package: 'EventModel';
			package: 'FamFam-Icons';
			package: 'FixUnderscores';
			package: 'FreeType';
			package: 'Gofer-Core';
			package: 'GroupManager';
			package: 'GroupManagerUI';
			package: 'Growl';
			package: 'HistoryCollection';
			package: 'MenuRegistration';
			package: 'Monticello';
			package: 'MonticelloConfigurations';
			package: 'MonticelloGUI';
			package: 'Monticellomocks';
			package: 'Morphic';
			package: 'NonInteractiveTranscript';
			package: 'PackageInfo';
			package: 'PluggableTextMorphWithLimits';
			package: 'RecentSubmissions';
			package: 'Ring-Core-Containers';
			package: 'Ring-Core-Kernel';
			package: 'Shout';
			package: 'StartupPreferences';
			package: 'TrueType';
			package: 'UI-Basic'.
	
		spec group: 'default' with: #('PharoKernel' 'System' 'Network' 'FileSystem' 'Zinc' 'Announcements' 'Settings' 'PharoTools' 'AST' 'Keymapping' 'CodeCompletion' 'Polymorph' 'RPackage' 'Refactoring' 'Regex' 'SUnit' 'Graphics' 'HelpSystem' 'NautilusBrowser' 'Unsorted' 'PharoTests').
		spec group: 'AST' with: #('AST-Core' 'AST-Semantic').
		spec group: 'Keymapping' with: #('Keymapping-Core' 'Keymapping-Pragmas' 'Keymapping-Settings' 'Keymapping-Shortcuts' 'Keymapping-Tools-Spec').
		spec group: 'CodeCompletion' with: #('NECompletion' 'NOCompletion').
		spec group: 'Polymorph' with: #('Polymorph-EventEnhancements' 'Polymorph-Geometry' 'Polymorph-TaskbarIcons' 'Polymorph-Tools-Diff' 'Polymorph-Widgets').
		spec group: 'RPackage' with: #('RPackage-Core' 'RPackage-SystemIntegration').
		spec group: 'Refactoring' with: #('Refactoring-Changes' 'Refactoring-Core' 'Refactoring-Critics' 'Refactoring-Environment' 'Refactoring-Pharo-Platform' 'Refactoring-Spelling').
		spec group: 'Regex' with: #('Regex-Core' 'Regex-Help').
		spec group: 'SUnit' with: #('SUnit-Core' 'SUnit-Help' 'SUnit-UI').
		spec group: 'Graphics' with: #('Graphics-Display Objects' 'Graphics-External' 'Graphics-Files' 'Graphics-Fonts' 'Graphics-Primitives' 'Graphics-Resources' 'Graphics-Support' 'Graphics-Text' 'Graphics-Transformations').
		spec group: 'HelpSystem' with: #('HelpSystem-Core').
		spec group: 'NautilusBrowser' with: #('Nautilus' 'Nautilus' 'NautilusCommon' 'NautilusRefactoring').
		spec group: 'PharoTests' with: #('Announcements-Tests-Core' 'BalloonTests' 'CodeImport-Tests' 'CollectionsTests' 'CompilerTests' 'CompressionTests' 'FileSystem-Tests-AnsiStreams' 'FileSystem-Tests-Core' 'FileSystem-Tests-Disk' 'FileSystem-Tests-Memory' 'FreeTypeTests' 'Gofer-Tests' 'Graphics-Tests' 'HelpSystem-Tests' 'KernelTests' 'Keymapping-Tests' 'MorphicTests' 'Multilingual-Tests' 'NetworkTests' 'RPackage-Tests' 'Regex-Tests-Core' 'Ring-Tests-Containers' 'Ring-Tests-Kernel' 'SUnit-Tests' 'ShoutTests' 'Spec-Tests' 'Tests' 'ToolsTest' 'Zinc-Tests').
		spec group: 'Unsorted' with: #('Balloon' 'Compatibility' 'Deprecated20' 'EmergencyEvaluator' 'EventModel' 'FamFam-Icons' 'FixUnderscores' 'FreeType' 'Gofer-Core' 'GroupManager' 'GroupManagerUI' 'Growl' 'HistoryCollection' 'MenuRegistration' 'Monticello' 'MonticelloConfigurations' 'MonticelloGUI' 'Monticellomocks' 'Morphic' 'NonInteractiveTranscript' 'PackageInfo' 'PluggableTextMorphWithLimits' 'RecentSubmissions' 'Ring-Core-Containers' 'Ring-Core-Kernel' 'Shout' 'StartupPreferences' 'TrueType' 'UI-Basic') ].