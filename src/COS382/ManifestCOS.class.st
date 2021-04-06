"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestCOS,
	#superclass : #PackageManifest,
	#category : #'COS382-Manifest'
}

{ #category : #'code-critics' }
ManifestCOS class >> ruleRBToDoCollectRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#Polynomial #differentiate #false)) #'2021-04-06T00:55:10.025954-04:00') )
]
