//
//  OperacjeNaLiczbachZespolonych.swift
//  SWIFT_lab12
//
//  Created by admin on 1/9/24.
//

import Foundation
class OperacjeNaLiczbachZespolonych: LiczbaZespolona
{
    var re: Int = 0
    var im: Int = 0
    
    init(re:Int, im:Int)
    {
        self.re = re
        self.im = im
    }
    
    func dodawaniel(liczbaB: LiczbaZespolona)-> OperacjeNaLiczbachZespolonych
    {
        let wynikRe = re + liczbaB.re
        let wynikIm = im + liczbaB.im
    
        let liczbaWynik = OperacjeNaLiczbachZespolonych(re:wynikRe,im:wynikIm)
        return liczbaWynik
    }
    
    func odejmowanie(liczbaB: LiczbaZespolona)->OperacjeNaLiczbachZespolonych
    {
        let wynikRe = re - liczbaB.re
        let wynikIm = im - liczbaB.im
        
        let liczbaWynik = OperacjeNaLiczbachZespolonych(re:wynikRe, im:wynikIm)
        return liczbaWynik
    }
    
    func wyswietl()
    {
        print("\(re) + \(im)i")
    }
    
}
