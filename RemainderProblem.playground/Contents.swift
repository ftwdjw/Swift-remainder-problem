
//:Chinese remainder problem:
//:The earliest known statement of the theorem, as a problem with specific numbers, appears in the 3rd-century book Sunzi's Mathematical Classic (孫子算經) by the Chinese mathematician Sun Tzu:
//:“	There are certain things whose number is unknown. If we count them by threes, we have two left over; by fives, we have three left over; and by sevens, two are left over. How many things are there?

//: ![Functions Part 2](pic.svg.png)

import UIKit

//first list all variables

var Solution = [Int]()//used to store the solutions
let Divisor = [3,5,7] //all the divisors
let Remainder = [2,3,2] //all the remainders
var saveCount = 0 //used to check all the remainders of the trails work
let maxTrial = 700 //maxium of trial number

assert(Divisor.count == Remainder.count,
    "the number of divisors must equal the number of remainders")



//interate i and test for solution

for i in (0...maxTrial){//start
 
    saveCount=0 //reset save count for the next trial
    
    // assume all the factors are not true and prove them true in each case
    
    //interate with index all the divisors and remainders
    
    for index in (0..<Remainder.count) {//start index
        
        if i%Divisor[index]==Remainder[index]{
            
            //% means mod (remainder) or modulus as in 55 mod 5 = 0
            
                saveCount += 1
            
    }//end index
    
    
 
    if (saveCount) == Remainder.count {//start check
        
        Solution.append(i)//if all checks are true add to solutions
        
        print("\(i) is a possible solution")//print out solutions
        
    }//end check
    }//end index
    
    
}//end

print("possible solutions=\(Solution)")

//check solutions



for i in (0..<Solution.count){//start
    
    saveCount=0 //reset saveCount for the next solution check
    
    // assume all the factors are not true and prove them true in each case
    
        for index in (0..<Remainder.count) {//start index
    if Solution[i]%Divisor[index] == Remainder[index]{//start  check
        
            saveCount += 1
        
           }//end check
        }//end index
    
    if (saveCount) == Remainder.count {//start check1
        
        print("\(Solution[i]) checks")//print out solutions
        
    }//end check1
    
}//end



