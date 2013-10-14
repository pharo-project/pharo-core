validateProjects: specArrays
    specArrays
        do: [ :array | 
            self
                validateExpectedConfigurationClassName: (array at: 1)
                expectedConfigurationVersion: (array at: 2)
                expectedConfigurationRepository: (array at: 3)
                expectedBaselineClassName: (array at: 4)
                expectedBaselineVersion: (array at: 5)
                expectedBaselineRepository: (array at: 6) ]