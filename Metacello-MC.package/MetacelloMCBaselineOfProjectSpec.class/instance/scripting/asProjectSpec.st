asProjectSpec
    ^ self copyForScriptingInto: (MetacelloMCProjectSpec for: self project asConfigurationProject)