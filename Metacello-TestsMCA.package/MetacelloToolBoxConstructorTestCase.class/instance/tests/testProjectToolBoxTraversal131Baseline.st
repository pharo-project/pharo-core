testProjectToolBoxTraversal131Baseline
    | configurationName versionString expected toolbox attributes |
    gofer
        repository: self atomicConfigurationRepository;
        repository: self alternateRepository;
        repository: self configurationRepository.
    configurationName := 'MetacelloTestConfigurationOfProjectToolBox'.
    gofer package: configurationName.
    gofer load.
    versionString := '1.3.1-baseline'.
    attributes := #(#'level1_1' #'level2_2' #'level3_2' #'level2_1').
    MetacelloConfigurationResource projectAttributes: attributes.
    toolbox := MetacelloToolBox new project: (Smalltalk at: configurationName asSymbol) project.
    expected := Dictionary new.
    expected
        at: #(#(#'level1_1') #(#'level2_1')) asMetacelloAttributePath
        put:
            'spec package: ''Example-Core'' with: [
		spec repository: ''http://www.example.com/4''. ].'.
    expected
        at: #(#(#'level1_1') #(#'level2_2') #(#'level3_2')) asMetacelloAttributePath
        put:
            'spec package: ''Example-Core'' with: [
		spec repository: ''http://www.example.com/7''. ].'.
    expected
        at: #(#(#'level1_1') #(#'level2_2')) asMetacelloAttributePath
        put:
            'spec package: ''Example-Core'' with: [
		spec repository: ''http://www.example.com/6''. ].'.
    expected
        at: #'level1_1' asMetacelloAttributePath
        put:
            'spec 
	package: ''Example-Core'' with: [
		spec repository: ''http://www.example.com/1''. ];
	package: ''Example-Core'' with: [
		spec repository: ''http://www.example.com/2''. ];
	package: ''Example-Core'' with: [
		spec repository: ''http://www.example.com/3''. ].'.
    toolbox
        updateVersionMethodForVersion: versionString
        updateProjects: false
        updatePackages: false
        versionSpecsDo: [ :attributeOrPath :versionSpec | 
            attributeOrPath ~~ #'common'
                ifTrue: [ 
                    | string |
                    string := versionSpec printString.
                    self assert: string = (expected at: attributeOrPath asMetacelloAttributePath) ].
            false ]