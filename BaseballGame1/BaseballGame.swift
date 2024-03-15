//
//  BaseballGame.swift
//  BaseballGame1
//
//  Created by t2023-m0032 on 3/13/24.
//

import Foundation

class BaseballGame {
    
    func start() {
        if let number = getUniqueThreeDigitNumber() {
            print("입력한 세 자리 숫자는 \(number)입니다.")
            //
        } else {
            print("올바른 숫자를 입력하지 않았습니다.")
        }
        let answer = makeAnswer()
    }
    //비교하ㄴㄴ 펀션
    func makeAnswer() -> (Int, Int, Int) {
        var num1 = Int.random(in: 1...9)
        var num2 = Int.random(in: 1...9)
        var num3 = Int.random(in: 1...9)
        
        while num1 == num2 || num1 == num3 || num2 == num3 {
            num1 = Int.random(in: 1...9)
            num2 = Int.random(in: 1...9)
            num3 = Int.random(in: 1...9)
        }
        print(num1, num2, num3)
        return (num1, num2, num3)
    }
    
    func getUniqueThreeDigitNumber() -> Int? {
        print("1부터 9까지의 서로 다른 세 자리 숫자를 입력하세요:")
        
        if let input = readLine(), let number = Int(input) {
            // 입력된 숫자가 세 자리인지 확인
            guard number >= 100 && number <= 999 else {
                print("세 자리 숫자를 입력하세요.")
                return nil
            }
            
            // 각 자리 숫자가 1부터 9까지의 숫자인지 확인
            let digit1 = number / 100
            let digit2 = (number % 100) / 10
            let digit3 = number % 10
            
            guard digit1 != digit2 && digit1 != digit3 && digit2 != digit3 else {
                print("각 자리 숫자가 서로 다른 숫자를 입력하세요.")
                return nil
            }
            
            guard digit1 >= 1 && digit1 <= 9 && digit2 >= 1 && digit2 <= 9 && digit3 >= 1 && digit3 <= 9 else {
                print("각 자리 숫자가 1부터 9까지의 숫자여야 합니다.")
                return nil
            }
            
            return number
        } else {
            print("올바른 형식의 숫자를 입력하세요.")
            return nil
        }
    }
}
