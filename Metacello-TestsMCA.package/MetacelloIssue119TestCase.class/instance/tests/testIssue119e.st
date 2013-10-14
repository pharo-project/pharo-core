testIssue119e
  "https://code.google.com/p/metacello/issues/detail?id=119"

  | project issues reasonCodes |
  gofer version: 'MetacelloTestConfigurationOfProjectIssue119-dkh.5'.
  gofer metacelloLoad.
  project := self project.	"no errors"
  self
    should: [ 
      [ self project ]
        on: MetacelloErrorInProjectConstructionNotification
        do: [ :ex | ex resume: true ] ]
    raise: Error.	"expect error"
  issues := MetacelloToolBox
    validateConfiguration:
      (Smalltalk at: #'MetacelloTestConfigurationOfProjectIssue119').
  reasonCodes := issues collect: [ :each | each reasonCode ].
  self assert: reasonCodes size = 4.
  #(#'versionCreationError')
    do: [ :expectedReasonCode | self assert: (reasonCodes includes: expectedReasonCode) ].
  self assert: project versions size = 2.
  project versions
    do: [ :vrsn | self assert: (#('4.0' '4.0-baseline') includes: vrsn versionString) ].
  self
    shouldnt: [ project version: '4.0-baseline' ]
    raise: MetacelloVersionDefinitionError.
  self
    shouldnt: [ project version: '4.0' ]
    raise: MetacelloVersionDefinitionError.
  self should: [ project version: '4.1' ] raise: MetacelloVersionDefinitionError.
  self should: [ project version: '4.2' ] raise: MetacelloVersionDefinitionError.
  self should: [ project version: '4.3' ] raise: MetacelloVersionDefinitionError.
  self should: [ project version: '4.4' ] raise: MetacelloVersionDefinitionError