// Playground - noun: a place where people can play

// Thinkful Playground
// Thinkful.com

// Fibonacci Sequence

// By definition, the first two numbers in the Fibonacci sequence are 1 and 1, or 0 and 1, depending on the chosen starting point of the sequence, and each subsequent number is the sum of the previous two.

import UIKit

class FibonacciSequence {
    
    let includesZero: Bool
    let values: [Int]
    
            init(maxNumber: Int, includesZero: Bool) {
                self.includesZero = includesZero
                
                if maxNumber == 0 && includesZero == false {
                    values = []
                }
                else if maxNumber == 0 && includesZero == true {
                    values = [0]
                }
                else {
                    
                    var myArray1 = [0,1]
                    var nextNumber = 0

                    while nextNumber <= maxNumber {
                        var lastNumber = myArray1.last!
                        var lastLastNumber = myArray1[myArray1.count-2]
                        nextNumber = lastNumber + lastLastNumber
                        
                        if nextNumber <= maxNumber {
                            myArray1.append(nextNumber)
                        }
                    }
                    
                if includesZero == false {
                    myArray1.removeAtIndex(0)
                }

                values = myArray1

                }
                
            }
    
    //TODO: Create an array which contains the numbers in the Fibonacci sequence, but don't add any numbers to the array which exceed the maxNumber. For example, if the maxNumber is 10 then the array should contain [0,1,1,2,3,5,8] because the next number is 13 which is higher than the maxNumber. If includesZero is false then you should not include the number 0 in the sequence.
    
    
            init(numberOfItemsInSequence: Int, includesZero: Bool) {
            self.includesZero = includesZero
                
            var myArray = [0,1]
            var y = 2

                if numberOfItemsInSequence == 0 {
                    values = []
                }
                else if numberOfItemsInSequence == 1 {
                    if includesZero == true {
                    values = [0]
                    }
                    else {
                    values = [1]
                    }
                }

                else {
                    if includesZero == true {
                        myArray = [0,1]
                    }
                    else {
                        myArray = [1,1]
                    }
        
        
                    while y < numberOfItemsInSequence {
                            y++
                            var lastPos = myArray.last!
                            var secondToLast = myArray[myArray.count-2]
                            var nextNext = lastPos + secondToLast
                            myArray.append(nextNext)
                        }
        
                values = myArray
                }
        }
    
        //TODO: Create an array which contains the numbers in the Fibonacci sequence, and the array should contain this many items: numberOfItemsInSequence. For example, if numberOfItemsInSequence is 10 then the array should contain [0,1,1,2,3,5,8,13,21,34] if inlcudesZero is true, or [1,1,2,3,5,8,13,21,34,55] if includesZero is false.

}

let fibanocciSequence = FibonacciSequence(maxNumber:90, includesZero: false)

let anotherSequence = FibonacciSequence(numberOfItemsInSequence: 5, includesZero: false)
