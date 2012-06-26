asserting
should: aBlock notTakeMoreThan: aDuration
    "Evaluate aBlock in a forked process and if it takes more than anInteger milliseconds
    to run we terminate the process and report a test failure.  It'' important to
    use the active process for the test failure so that the failure reporting works correctly
    in the context of the exception handlers."

    | evaluated evaluationProcess result delay testProcess |

    evaluated := false.
    delay := Delay forDuration: aDuration.
    testProcess := Processor activeProcess.
    "Create a new process to evaluate aBlock"
    evaluationProcess := [
        result := aBlock value.
        evaluated := true.
        delay unschedule.
        testProcess resume ] forkNamed: 'Process to evaluate should: notTakeMoreThanMilliseconds:'.

    "Wait the milliseconds they asked me to"
    delay wait.
    "After this point either aBlock was evaluated or not..."
    evaluated ifFalse: [
        evaluationProcess terminate.
        self assert: false description: ['Block evaluation took more than the expected <1p>' expandMacrosWith: aDuration]].
   
    ^result