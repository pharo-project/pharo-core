showOnlyRepositoriesFromWorkingCopySettingOn: aBuilder
       <systemsettings>  
       (aBuilder setting: #showOnlyRepositoriesFromWorkingCopy)
               label: 'Show only repositories from working copies' translated;
               description: 'When enabled Monticello Browser displays only the repositories associated to the current selected working copy.' translated;
               parent: #monticello;
               target: MCWorkingCopyBrowser;
               selector: #showOnlyRepositoriesFromWorkingCopy