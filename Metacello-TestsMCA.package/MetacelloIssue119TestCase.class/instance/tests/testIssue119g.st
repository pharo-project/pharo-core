testIssue119g
  "https://code.google.com/p/metacello/issues/detail?id=119"

  | project issues reasonCodes |
  gofer version: 'MetacelloTestConfigurationOfProjectIssue119-dkh.7'.
  gofer metacelloLoad.
  project := self project.	"no errors"
  self
    shouldnt: [ 
      [ self project ]
        on: MetacelloErrorInProjectConstructionNotification
        do: [ :ex | ex resume: true ] ]
    raise: Error.	"expect error"
  issues := MetacelloToolBox
    validateConfiguration:
      (Smalltalk at: #'MetacelloTestConfigurationOfProjectIssue119').
  reasonCodes := issues collect: [ :each | each reasonCode ].
  self assert: reasonCodes size = 1.
  #(#'cannotResolveVersion')
    do: [ :expectedReasonCode | self assert: (reasonCodes includes: expectedReasonCode) ].
  self
    shouldnt: [ project version: '4.0-baseline' ]
    raise: MetacelloVersionDefinitionError.
  self
    shouldnt: [ project version: '5.0' ]
    raise: MetacelloVersionDefinitionError