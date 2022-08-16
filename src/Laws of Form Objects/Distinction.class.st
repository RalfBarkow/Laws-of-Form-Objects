Class {
	#name : #Distinction,
	#superclass : #Object,
	#category : #'Laws of Form Objects'
}

{ #category : #comparing }
Distinction >> = aDistinction [

	^ self name = aDistinction name
]

{ #category : #comparing }
Distinction >> hash [

	^ self name hash
]

{ #category : #accessing }
Distinction >> name [
]
