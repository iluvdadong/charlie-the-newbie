# charlie-the-newbie
To Pass The Probation Period In DIO Successfully

### [Study Plan](https://docs.google.com/spreadsheets/d/1OiMI20YU3SO3J-jK_Y4sGAnmJlLcJ1MHZHjkAW9a99g/edit#gid=0)

#### TUE/OCT/13
- Read Swift Documentation [A Swift Tour Chapter](https://docs.swift.org/swift-book/GuidedTour/GuidedTour.html)
- Study Auto Layout and Responsive UIs

#### WED/OCT/14
#### - Complete [Auto Layout and Responsive UIs Challenge](https://github.com/iluvdadong/charlie-the-newbie/tree/master/Calculator-Layout-iOS13-master)
  - Calculator Layout
    - How to add constraints and understanding how Auto Layout works.
    - How to Pin and Align elements.
    - How to create containers to configure advanced layouts.
    - How to debug auto layout errors.
    - Understanding what Xcode needs in order to correctly layout a design.
    - How to use Stack Views to create complex interfaces.
            
#### - Complete [Using and Understanding Apple Documentation](https://github.com/iluvdadong/charlie-the-newbie/tree/master/Xylophone-iOS13-masterr)
  - Xylophone Project
     - How to play sound using AVFoundation and AVAudioPlayer.
     - Understand Apple documentation and how to use StackOverflow.
     - Functions and methods in Swift.
     - Data types.
     - Swift loops.
     - Variable scope.
     - The ViewController lifecycle.
     - Error handling in Swift.
     - Code refactoring.
     - Basic debugging.

#### THU/OCT/15
#### - Complete [Intermediate Swift Programming - Control Flow and Optionals](https://github.com/iluvdadong/charlie-the-newbie/tree/master/EggTimer-iOS13-master)
   - Swift Collection types - Dictionaries
   - The Swift Timer API
   - Conditional statements - IF/ELSE
   - Conditional statements - Switch
   - Functions with outputs
   - How to use the ProgressView
    
#### FRI/OCT/16
#### - [1] [Study W/David](https://app.slack.com/docs/TM8RYJG4T/F01CMSAEA02)
   - [GraphQL Excercise](https://github.com/iluvdadong/charlie-the-newbie/tree/master/movieql)
   - Bitbucket 사용 / 프로젝트 소스 클론
   
   
#### MON/OCT/19
#### - [2] Study W/David
   - GraphQL 프로젝트 소스 실습
     - [GraphGL API](https://velog.io/@ckstn0777/GraphQL-API-%EB%A7%8C%EB%93%A4%EA%B8%B0-12)
   - 프로젝트 소스 디바이스에 빌드
   - Postman - Server API확인
   - DBeaver - Data 조회
   - 그 외
    - AppDelegate
    - 생명주기
    - if debug / else / endif
    - 확장자 .ipa

#### TUE/OCT/20
#### Networking, JSON Parsing, APIs and Core Location
   - Learn to use the UITextField
   - Swift Deep Dive] Protocols
   - The Delegate Design Pattern
   - An Example of Protocols and Delegates
   - Understanding the OpenWeather API and URL Parameters
   - Use the URLSession for Networking

#### WED/OCT/21
#### Networking, JSON Parsing, APIs and Core Location
   - Closure
   ```swift
// 클로저 : Closures  / 고차함수 / MAP 이해하기
// iOS App Development Course - 161. [Swfit Deep Dive] Closure

import UIKit

let array = [6,2,3,5,1]

func addOne(n1: Int) -> Int {
    return n1 + 1
}

array.map(addOne) //[7,3,4,6,2]

// 고차함수 map으로 addOne함수를 사용해서 array 배열의 각 원소에 addOne함수를 적용시켜서 기존에 있던  array의 원소를 인자로 넣고 거기에 1을 더해서 반환하는 작업을 한 것임
// - map은 컬렉션 내부의 기존 데이터를 변형해서 새로운 컬렉션을 생성하는 함수입니다.
// - 내부의 자료에 변형을 가하기 위해 함수의 각 요소에 함수를 적용해서 새로운 컬렉션을 만들어줍니다.
// - 잘 사용하면 for 문을 사용하지 않고도 작업할 수 있습니다.
 

// 기존의 Function은 클로저의 한 형태로 이름있는 클로저임!
// 그렇다면 기존의 function을 클로저의 또 다른 형태로 변환할 수 있다는 것!
 

import UIKit

let array = [6,2,3,5,1]

func addOne(n1: Int) -> Int {
    return n1 + 1
}

array.map(addOne) //[7,3,4,6,2]
// map은 컬렉션 내부의 기존 데이터를 변형해서 새로운 컬렉션을 생성하는 함수입니다. 내부의 자료에 변형을 가하기 위해 함수의 각 요소에 함수를 적용해서 새로운 컬렉션을 만들어줍니다. 잘 사용하면 for 문을 사용하지 않고도 작업할 수 있습니다.

// Closure로 변환해보기
// 1차 변환
{
    (n1: Int) -> Int in
    return n1 + 1
}

// 2차 변환
{ $0 + 1 }

// 결과 : print 찍어보면 위와 똑같이 나온다는 것
array.map( {$0 + 1} )  //[7,3,4,6,2]

// 괄호 생략 가능
array.map{$0 + 1}  //[7,3,4,6,2] 단축인자이용
 


// Array 배열을 스트링으로 변환하는 것도 단순하다

import UIKit

let array = [6,2,3,5,1]

let stringArray   = array.map{"\($0)"}

print(stringArray) //["6", "2", "3", "5", "1"]
 
  ``` 
