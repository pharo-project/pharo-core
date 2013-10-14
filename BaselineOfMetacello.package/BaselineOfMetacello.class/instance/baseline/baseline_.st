baseline: spec
  <baseline>
  spec
    for: #'common'
    do: [ 
      spec postLoadDoIt: #'reprimeRegistryIssue197'.
      spec baseline: 'FileTree'.
      spec
        project: 'Gofer'
          with: [ 
              spec
                className: 'ConfigurationOfGofer';
                versionString: #'stable';
                loads: #('Core');
                repository: 'http://seaside.gemtalksystems.com/ss/metacello' ];
        project: 'Gofer Tests'
          copyFrom: 'Gofer'
          with: [ spec loads: #('Tests') ];
        yourself.
      spec
        package: 'Metacello-Base';
        package: 'Metacello-ToolBox'
          with: [ spec requires: #('Metacello-Base' 'Metacello-Core') ];
        package: 'Metacello-Core'
          with: [ 
              spec
                requires: 'Metacello-Base';
                includes: #('Metacello-MC' 'Metacello-Platform') ];
        package: 'Metacello-Cypress' with: [ spec requires: 'Metacello-Core' ];
        package: 'Metacello-FileTree'
          with: [ spec requires: #('Metacello-MC' 'FileTree') ];
        package: 'Metacello-GitHub'
          with: [ spec requires: #('Metacello-MC' 'Metacello-FileTree') ];
        package: 'Metacello-MC'
          with: [ spec requires: #('Metacello-Core' 'Gofer') ];
        package: 'Metacello-Platform'
          with: [ spec requires: #('Metacello-MC') ];
        package: 'Metacello-Reference'
          with: [ spec requires: #('Metacello-MC') ];
        package: 'Metacello-Tutorial'
          with: [ spec requires: #('Metacello-Core') ];
        package: 'Metacello-TestsCore'
          with: [ spec requires: #('Metacello-Core') ];
        package: 'Metacello-TestsMCResources'
          with: [ 
              spec
                postLoadDoIt: #'testResourcePostLoadDoIt';
                includes: #('Metacello-TestsCommonMC');
                requires: #('Metacello-Core') ];
        package: 'Metacello-TestsMCCore'
          with: [ 
              spec
                requires:
                  #('Metacello-Core' 'Metacello-TestsCore' 'Metacello-ToolBox' 'Metacello-TestsMCResources') ];
        package: 'Metacello-TestsMC'
          with: [ 
              spec
                requires:
                  #('Metacello-MC' 'Gofer Tests' 'Metacello-ToolBox' 'Metacello-GitHub' 'Metacello-TestsMCResources') ];
        package: 'Metacello-TestsMCA'
          with: [ spec requires: #('Metacello-TestsMC') ];
        package: 'Metacello-TestsMCB'
          with: [ spec requires: #('Metacello-TestsMC') ];
        package: 'Metacello-TestsCommonMC'
          with: [ 
              spec
                file: 'Metacello-TestsCommonMC.common';
                requires: 'Metacello-TestsMCResources' ];
        package: 'Metacello-TestsReference'
          with: [ spec requires: #('Metacello-Reference') ];
        package: 'Metacello-TestsTutorial'
          with: [ spec requires: #('Metacello-Tutorial' 'Metacello-TestsMCResources') ];
        yourself.
      spec
        group: 'default' with: #('batch' 'Metacello-ToolBox');
        group: 'batch' with: #('Metacello-Core' 'Metacello-GitHub');
        group: 'Base Configuration' with: #('Metacello-Base');
        group: 'Core' with: #('default');
        group: 'Cypress' with: #('Metacello-Cypress');
        group: 'Tutorial' with: #('Metacello-Tutorial' 'Metacello-Reference');
        group: 'UI' with: #('default');
        group: 'TravisCI_1'
          with:
            #('Metacello-TestsCore' 'Metacello-TestsReference' 'Metacello-TestsMCCore');
        group: 'TravisCI_2' with: #('Metacello-TestsMCA');
        group: 'TravisCI_3'
          with: #('Metacello-TestsMCB' 'Metacello-TestsTutorial');
        group: 'TravisCI' with: #('TravisCI_1' 'TravisCI_2' 'TravisCI_3');
        group: 'Tests'
          with:
            #('Metacello-TestsCore' 'Metacello-TestsTutorial' 'Metacello-TestsMCA' 'Metacello-TestsMCB' 'Metacello-TestsReference' 'Metacello-TestsMCCore');
        yourself ].
  spec
    for: #'squeakCommon'
    do: [ 
      spec
        configuration: 'HelpSystem'
          with: [ 
              spec
                versionString: '1.1';
                loads: #('Core');
                repository: 'http://www.squeaksource.com/MetacelloRepository' ];
        configuration: 'OSProcess'
          with: [ 
              spec
                versionString: '4.4.5';
                repository: 'http://www.squeaksource.com/MetacelloRepository';
                repository: 'http://seaside.gemtalksystems.com/ss/metacello' ];
        yourself.
      spec
        package: 'Metacello-TestsPlatform'
          with: [ 
              spec
                requires: #('Metacello-Platform');
                file: 'Metacello-TestsPlatform.squeakCommon' ];
        package: 'Metacello-Help' with: [ spec requires: 'HelpSystem' ];
        yourself.
      spec
        group: 'Tests' with: #('Metacello-TestsPlatform');
        group: 'TravisCI_1' with: #('Metacello-TestsPlatform');
        yourself ].
  spec
    for: #'pharo'
    do: [ 
      spec
        project: 'ProfStef'
          with: [ 
              spec
                className: 'ConfigurationOfProfStef';
                versionString: #'stable';
                repository:
                    'http://smalltalkhub.com/mc/PharoExtras/ProfStef/main' ];
        configuration: 'OSProcess' with: [ spec versionString: #'stable' ];
        yourself.
      spec
        package: 'Metacello-ProfStef'
          with: [ spec requires: #('Metacello-Core' 'ProfStef' 'Metacello-ToolBox') ];
        package: 'Metacello-TestsProfStef'
          with: [ spec requires: #('Metacello-ProfStef') ];
        package: 'Metacello-PharoCommonPlatform'
          with: [ spec requires: #('Metacello-MC') ];
        package: 'Metacello-Platform'
          with: [ spec requires: #('Metacello-PharoCommonPlatform') ];
        yourself.
      spec
        group: 'Tests' with: #('Metacello-TestsProfStef');
        group: 'Tutorial' with: #('Metacello-ProfStef');
        yourself ].
  spec
    for: #'pharo1.x'
    do: [ 
      spec
        package: 'Metacello-Platform'
        with: [ spec 
                    file: 'Metacello-Platform.pharo';
                    requires: #('OSProcess') ] ].
  spec
    for: #'pharo1.1.x'
    do: [ 
      spec
        baseline: 'FileTree'
        with: [ spec repository: 'github://dalehenrich/filetree:pharo1.1/repository' ] ].
  spec
    for: #'pharo1.2.x'
    do: [ 
      spec
        baseline: 'FileTree'
        with: [ spec repository: 'github://dalehenrich/filetree:pharo1.1/repository' ] ].
  spec
    for: #'pharo1.3.x'
    do: [ 
      spec
        baseline: 'FileTree'
        with: [ spec repository: 'github://dalehenrich/filetree:pharo1.3/repository' ] ].
  spec
    for: #'pharo1.4.x'
    do: [ 
      spec
        baseline: 'FileTree'
        with: [ spec repository: 'github://dalehenrich/filetree:pharo1.4/repository' ] ].
  spec
    for: #'pharo2.x'
    do: [ 
      spec
        configuration: 'OSProcess'
          with: [ spec repository: 'http://ss3.gemtalksystems.com/ss/MetaRepoForPharo20' ];
        yourself.
      spec
        package: 'Metacello-Platform'
          with: [ spec 
	                file: 'Metacello-Platform.pharo20';
	                requires: #('OSProcess') ];
        package: 'Metacello-TestsCommonMC'
          with: [ spec file: 'Metacello-TestsCommonMC.pharo20' ];
        yourself.
      spec
        baseline: 'FileTree'
        with: [ spec repository: 'github://dalehenrich/filetree:pharo2.0/repository' ] ].
  spec
    for: #'pharo3.x'
    do: [ 
      spec removeProject: 'OSProcess'.
      spec
        package: 'Metacello-Platform'
          with: [ spec file: 'Metacello-Platform.pharo30' ];
        package: 'Metacello-TestsCommonMC'
          with: [ spec file: 'Metacello-TestsCommonMC.pharo20' ];
        yourself.
      spec
        baseline: 'FileTree'
        with: [ spec repository: 'github://dalehenrich/filetree:pharo3.0/repository' ] ].
  spec
    for: #'squeak'
    do: [ 
      spec
        baseline: 'FileTree'
          with: [ spec repository: 'github://dalehenrich/filetree:squeak4.3/repository' ];
        yourself.
      spec
        package: 'Metacello-Platform'
          with: [ 
              spec
                file: 'Metacello-Platform.squeak';
                requires: #('OSProcess') ];
        yourself ].
  spec
    for: #'gemstone'
    do: [ 
      spec
        baseline: 'FileTree'
          with: [ spec repository: 'github://dalehenrich/filetree:gemstone2.4/repository' ];
        project: 'GsCore'
          with: [ 
              spec
                className: 'ConfigurationOfGsCore';
                versionString: '0.247';
                repository:
                    'http://seaside.gemtalksystems.com/ss/MetacelloRepository' ];
        project: 'GsMonticello'
          with: [ 
              spec
                className: 'ConfigurationOfGsMonticello';
                versionString: '0.242';
                repository:
                    'http://seaside.gemtalksystems.com/ss/MetacelloRepository' ];
        yourself.
      spec
        package: 'Metacello-GitHub' with: [ spec requires: #('GsCore') ];
        package: 'Metacello-Platform'
          with: [ 
              spec
                file: 'Metacello-Platform.gemstone';
                postLoadDoIt: #'gemstone10beta311PostLoadDoIt';
                requires: 'GsMonticello' ];
        package: 'Metacello-TestsPlatform'
          with: [ 
              spec
                requires: #('Metacello-Platform');
                file: 'Metacello-TestsPlatform.gemstone' ];
        yourself.
      spec
        group: 'Tests' with: #('Metacello-TestsPlatform');
        group: 'TravisCI_1' with: #('Metacello-TestsPlatform');
        yourself ]