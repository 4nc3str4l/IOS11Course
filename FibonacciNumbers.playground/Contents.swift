//: 0,1,1,2,3,5,8

import UIKit

func fibonacci(until: Int){
    assert(until > 0, "Number should be greather than 0!")
    
    var num1 = 0;
    var num2 = 1;
    
    print(num1)
    if until <= 1{
        return;
    }

    print(num2)
    
    if until <= 2{
        return;
    }

    for _ in 3...until{
        let num = num1 + num2
        print(num)
        num1 = num2
        num2 = num
    }
}

fibonacci(until: 8)
