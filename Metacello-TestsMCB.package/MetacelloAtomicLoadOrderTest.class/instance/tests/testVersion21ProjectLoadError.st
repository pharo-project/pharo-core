testVersion21ProjectLoadError
    | project version |
    project := self project.
    version := project version: '2.1'.
    self should: [ version load ] raise: MetacelloProjectSpecLoadError.
    [ version load ]
        on: MetacelloProjectSpecLoadError
        do: [ :ex | 
            self assert: ex versionDoesNotExistException class == MetacelloVersionDoesNotExistError.
            self assert: ex versionString = '20.0'.
            self shouldnt: [ ex possibleVersions ] raise: Error ]