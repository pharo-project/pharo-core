version1053: spec
  <version: '1.0.5.3' imports: #('1.0.5.2-baseline')>
  spec
    for: #'common'
    do: [ 
      spec blessing: #'release'.
      spec
        description:
          'Gofer 1.0.5.3 (dkh.43)
- fix Metacello Issue #227: Retry error reporting in MetacelloCommonMCSpecLoader>>retryingResolvePackageSpecReferences:gofer: should be improved
  https://github.com/dalehenrich/metacello-work/issues/227'.
      spec author: 'dkh'.
      spec timestamp: '9/28/2014 13:45'.
      spec
        package: 'Gofer-Core' with: 'Gofer-Core-StephaneDucasse.133';
        package: 'Gofer-Tests' with: 'Gofer-Tests-StephaneDucasse.129' ].
  spec
    for: #'pharo1.0.x'
    do: [ 
      spec
        package: 'Gofer-Core' with: 'Gofer-Core.pharo10-dkh.135';
        package: 'Gofer-Tests' with: 'Gofer-Tests.pharo10-dkh.131' ].
  spec
    for: #'pharo1.1.x'
    do: [ 
      spec
        package: 'Gofer-Core' with: 'Gofer-Core.pharo10-dkh.135';
        package: 'Gofer-Tests' with: 'Gofer-Tests.pharo10-dkh.131' ].
  spec
    for: #'squeak'
    do: [ 
      spec
        package: 'Gofer-Core' with: 'Gofer-Core.squeak-dkh.135';
        package: 'Gofer-Tests' with: 'Gofer-Tests.squeak-dkh.131' ].
  spec
    for: #'gemstone'
    do: [ 
      spec
        package: 'Gofer-Core' with: 'Gofer-Core.gemstone-dkh.137';
        package: 'Gofer-Tests' with: 'Gofer-Tests.gemstone-dkh.131' ]