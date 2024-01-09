//
//  Liczby.swift
//  SWIFT_lab12
//
//  Created by admin on 1/9/24.
//

import Foundation
class Liczby: LiczbaLosowa
{
    var liczbaA: Int = 0
    var liczbaB: Int = 0
    init(liczbaA: Int, liczbaB: Int)
    {
        self.liczbaA = liczbaA
        self.liczbaB = liczbaB
    }
    func generujLiczbe() -> Int {
        var liczba = Int.random(in: 1..<100)
        return liczba
    }
    func wyswietl()
    {
        print("Liczba A: \(liczbaA)")
        print("Liczba B: \(liczbaB)")
    }
    func podniesDoPotegi(ktoraLiczba: Int, potega: Double) -> Double
    {
       if(ktoraLiczba == 1)
        {
           return pow(Double(liczbaA), potega)
       }
        else if(ktoraLiczba == 2)
        {
            return pow(Double(liczbaB),potega)
        }
        else
        {
            return pow(Double(liczbaA),potega)
        }
    }
    
    
}
