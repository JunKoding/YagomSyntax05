import Cocoa

// 컬렉션 타입(Array, Dictionary, Set)

/*
 Array - 순서가 있는 리스트 컬렉션
 Dictionary - 키와 값의 쌍으로 이루어진 컬렉션
 Set - 순서가 없고, 멤버가 유일한 컬렉션
 */

// Array
// 빈 Int Array 생성
var integers: Array<Int> = Array<Int>()
integers.append(1)
integers.append(100)
// 오류) integers.append(100.1)

integers.contains(100)
integers.contains(99)

integers.remove(at: 0)
integers.removeLast()
integers.removeAll()

integers.count

// 오류) integers[0] - 0번 인덱스는 비어있음.

// Array<Double>은 [Double]과 같은 표현
// 빈 Double Array 생성
var doubles: Array<Double> = [Double]()

// 빈 String Array 생성
var strings: Array<String> = [String]()

// 빈 Character Array 생성
// []는 새로운 빈 Array
var character: Array<Character> = []

// let을 사용하여 Array를 선언하면 불변 Array
let immutableArray = [1,2,3]

// 오류) immutableArray.append(4)
// 오류) immutableArray.removeAll()






// Dictionary

// Key가 String 타입이고 Value가 Any인 빈 Dictionary 생성
var anyDictionary: Dictionary<String, Any> = [String: Any]()
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100
anyDictionary

anyDictionary["someKey"] = "dictionary"
anyDictionary

anyDictionary.removeValue(forKey: "anotherKey")

anyDictionary["someKey"] = nil
anyDictionary

let emptyDictionary: [String: String] = [:]
let initializedDictionary: [String: String] = ["name": "Yagom", "gender": "male"]

// 오류) emptyDictionary["key"] = "value" - let으로 설정해서 값 변경 불가

// 오류) let someValue: String = initializedDictionary["name"] - key의 값이 있을 수도 없을 수도 있으니까






// Set

// 빈 Int Set 생성
var integerSet: Set<Int> = Set<Int>()
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(99)

integerSet
integerSet.contains(1)
integerSet.contains(2)

integerSet.remove(100)
integerSet.removeFirst()

integerSet.count

// 집합 연산도 가능.
let setA: Set<Int> = [1,2,3,4,5]
let setB: Set<Int> = [3,4,5,6,7]

let union: Set<Int> = setA.union(setB) // 합집합
let sortedUnion: [Int] = union.sorted() // 합집합을 오름차순 정렬
let intersection: Set<Int> = setA.intersection(setB) // 교집합
let subtracting: Set<Int> = setA.subtracting(setB) // 차집합















