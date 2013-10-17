registrationForClassNamed: aClassName ifAbsent: absentBlock
    | baseName |
    baseName := MetacelloScriptEngine baseNameOf: aClassName.
    self configurationRegistry at: aClassName ifPresent: [ :registration | ^ registration ].
    self baselineRegistry at: aClassName ifPresent: [ :registration | ^ registration ].
    self configurationRegistry at: 'ConfigurationOf' , baseName ifPresent: [ :registration | ^ registration ].
    self baselineRegistry at: 'BaselineOf' , baseName ifPresent: [ :registration | ^ registration ].
    ^ absentBlock value