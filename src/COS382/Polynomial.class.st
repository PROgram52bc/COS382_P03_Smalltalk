"
A polynomial class

Represents a polynomial, can find the sum or derivative of the polynomial, as well as drawing graphs

- asArray 
- initialize

   Polynomial new initialize: #(1 3 4) ""represents the polynomial 1 + 3x + 4x^2""
"
Class {
	#name : #Polynomial,
	#superclass : #Object,
	#instVars : [
		'coefficient'
	],
	#category : #COS382
}

{ #category : #comparing }
Polynomial >> != aPoly [
	^ self ~= aPoly
]

{ #category : #comparing }
Polynomial >> < aPoly [
	^ self shouldNotImplement 
]

{ #category : #comparing }
Polynomial >> = aPoly [
    "compares two polynomials"
    ^ coefficient = aPoly asArray 
]

{ #category : #accessing }
Polynomial >> asArray [
	"return array representation"
	^ coefficient deepCopy
]

{ #category : #accessing }
Polynomial >> coefficient: power [
	"return coefficient of power term"
	(power >= coefficient size) ifTrue: [ ^ 0 ].
	^ coefficient at: power + 1
]

{ #category : #accessing }
Polynomial >> degree [
	"return degree of polynomial"
	^ coefficient size - 1
]

{ #category : #accessing }
Polynomial >> initialize [
	super initialize.
	coefficient := #( 0 )
]

{ #category : #accessing }
Polynomial >> initialize: initValue [
	"private: initialize coefficient instance variable"

	(initValue isKindOf: (self class))
		ifTrue: [ coefficient := (initValue asArray) deepCopy ]
		ifFalse: [
			(initValue isKindOf: Array)
				ifTrue: [ coefficient := initValue deepCopy ]
				ifFalse: [ self initialize ]
		]
]

{ #category : #'math functions' }
Polynomial >> sum: aPoly [
	"sum up two polynomials"
	| maxDegree newPolyArray |
	maxDegree := self degree max: aPoly degree.
	newPolyArray := Array new: maxDegree + 1.
	0 to: maxDegree do: [ :i | 
		newPolyArray at: i + 1
		put: (self coefficient: i) + (aPoly coefficient: i) 
		].
	^ self class new initialize: newPolyArray
]
