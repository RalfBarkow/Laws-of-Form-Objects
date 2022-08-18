Class {
	#name : #LoForm,
	#superclass : #Object,
	#instVars : [
		'distinctions'
	],
	#classInstVars : [
		'distinctions'
	],
	#category : #'Laws of Form Objects'
}

{ #category : #accessing }
LoForm class >> cross [
]

{ #category : #accessing }
LoForm class >> distinctions [
	^ distinctions
]

{ #category : #accessing }
LoForm class >> distinguish: aString [ 
]

{ #category : #accessing }
LoForm >> cross [
	^ cross
]

{ #category : #accessing }
LoForm >> cross: aName [ 

	^ (self distinguish: aName) cross
]

{ #category : #accessing }
LoForm >> distinctionNamed: aName [

	^ self distinctions
		detect: [ :any | any name = aName ]
		ifNone: [ nil ]
]

{ #category : #accessing }
LoForm >> distinctions [
	^ distinctions
]

{ #category : #accessing }
LoForm >> distinguish: aName [

	^ (self distinctionNamed: aName) ifNil:
		[
			| distinction |
			distinction := Distinction named: aName.
			distinction form: self.
			self distinctions add: distinction.
			distinction
		]
]
