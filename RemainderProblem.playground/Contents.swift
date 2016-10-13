
//:Chinese remainder problem:
//:The earliest known statement of the theorem, as a problem with specific numbers, appears in the 3rd-century book Sunzi's Mathematical Classic (孫子算經) by the Chinese mathematician Sun Tzu:
//:“	There are certain things whose number is unknown. If we count them by threes, we have two left over; by fives, we have three left over; and by sevens, two are left over. How many things are there?

//: ![Functions Part 2](pic.svg.png)

import UIKit

//first list all variables

var Solution = [Int]()//used to store the solutions
var Save = [Bool]()//used to store all the Boolean checks
let Divisor = [3,5,7] //all the divisors
let Remainder = [2,3,2] //all the remainders


//interate i and test for solution

for i in (0...700){//start
 
    
    // assume all the factors are not true and prove them true in each case
    Save=[false,false,false]
    
    //interate with index all the divisors and remainders
    
    for index in (0..<Remainder.count) {//start index
        
        if i%Divisor[index]==Remainder[index]{
            
            //% means mod (remainder) or modulus as in 55 mod 5 = 0
            
         Save[index]=true
    }//end index
    
    
 
    if (Save[0] && Save[1] && Save[2]) == true {//start check
        
        Solution.append(i)//if all 3 checks are true add to solutions
        
        print("\(i) is a possible solution")//print out solutions
        
    }//end check
    }//end index
    
    
}//end

print("possible solutions=\(Solution)")

//check solution

for i in (0..<Solution.count){//start
    
    // assume all the factors are not true and prove them true in each case
    Save=[false,false,false]
    
        for index in (0..<Remainder.count) {//start index
    if Solution[i]%Divisor[index] == Remainder[index]{//start  check
           Save[index]=true
           }//end check
        }//end index
    
    if (Save[0] && Save[1] && Save[2]) == true {//start check1
        
        print("\(Solution[i]) checks")//print out solutions
        
    }//end check1
    
}//end



