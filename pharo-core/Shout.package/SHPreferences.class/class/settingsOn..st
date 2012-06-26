settings
settingsOn: aBuilder 
	<systemsettings>
	(aBuilder setting: #'Shout: Syntax Highlighting') target: self;
		 parentName: #codeBrowsing;
		 description: 'Syntax Highlighting As You Type: Enable syntax highlighting in browsers, debuggers and workspaces and set patterns style.';
		 selector: #enabled;
		 icon: UITheme current smallConfigurationIcon;
		
		with: [(aBuilder setting: #selectorPatternsStyle) label: 'Selector Patterns' translated;
				 description: 'Selector patterns in method pane' translated.
			(aBuilder setting: #errorStyle) label: 'Syntactic error' translated;
				 description: 'Invalid and undefined code' translated.
			(aBuilder setting: #argsStyle) label: 'Parameters' translated;
				 description: 'Parameters in patterns, message sends, and blocks' translated.
			(aBuilder setting: #commentStyle) label: 'Comments' translated;
				 description: 'Comments in code pane' translated.
			(aBuilder setting: #defaultStyle) label: 'Default' translated;
				 description: 'Default style' translated.
			(aBuilder setting: #globalVarStyle) label: 'Global variables' translated;
				 description: 'References to global variables, including classes' translated.
			(aBuilder setting: #instanceVarStyle) label: 'Instance/class variables' translated;
				 description: 'References to instance and class variables' translated.
			(aBuilder setting: #messageSendsStyle) label: 'Message sends' translated;
				 description: 'Message sends' translated.
			(aBuilder setting: #primitiveOrModuleStyle) label: 'Primitive or module' translated;
				 description: 'Primitive or module' translated.
			(aBuilder setting: #primitiveTypesStyle) label: 'Primitive types' translated;
				 description: 'Literal data' translated.
			(aBuilder setting: #reservedWordsStyle) label: 'Reserved words' translated;
				 description: 'Reserved words of the Smalltalk language' translated.
			(aBuilder setting: #syntaxStyle) label: 'Syntax' translated;
				 description: 'Any other syntactic element' translated.
			(aBuilder setting: #variableStyle) label: 'Variable' translated;
				 description: 'Temporary variable' translated]