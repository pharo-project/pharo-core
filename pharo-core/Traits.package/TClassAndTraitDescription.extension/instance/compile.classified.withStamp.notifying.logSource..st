compiling
compile: text classified: category
withStamp: changeStamp notifying: requestor logSource: logSource
       | methodAndNode |
       methodAndNode := self compile: text asString classified: category
notifying: requestor
                       trailer: self defaultMethodTrailer ifFail: [^nil].
       logSource ifTrue: [
               " replace 'text' with 'methodAndNode node sourceText' "
               self logMethodSource: methodAndNode node sourceText
forMethodWithNode: methodAndNode
                       inCategory: category withStamp: changeStamp notifying: requestor.
       ].
       self addAndClassifySelector: methodAndNode selector withMethod: methodAndNode
               method inProtocol: category notifying: requestor.
       self instanceSide noteCompilationOf: methodAndNode selector meta:
self isClassSide.
       ^ methodAndNode selector