defaultMonticelloDiffToolsSettingOn: aBuilder
	<systemsettings>  
	(aBuilder setting: #polymorphDiffToolsUsedByDefault)
		label: 'Use Polymorph difference tools' translated;
		description: 'When enabled the Polymorph diff tools will be used with Monticello. When disabled, the original tools are used.' translated;
		parent: #monticello;
		target: PSMCPatchMorph;
		selector: #usedByDefault