testProjectToolBoxA
    | configurationName rejects |
    gofer repository: self configurationRepository.
    configurationName := 'MetacelloTestConfigurationOfProjectToolBox'.
    gofer package: configurationName.
    gofer load.
    self assertVersionSpecFor: configurationName isEqualAfterModifyingVersion: '1.3.0-baseline'