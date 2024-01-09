//
//  main.swift
//  SWIFT_lab12
//
//  Created by admin on 1/9/24.
//

import Foundation
//
//var liczbaA = OperacjeNaLiczbachZespolonych(re:7,im:-5)
//var liczbaB = OperacjeNaLiczbachZespolonych(re:9,im:8)
//
//print("Liczba A:",terminator: " ")
//liczbaA.wyswietl()
//print("Liczba B:", terminator: " ")
//liczbaB.wyswietl()
//
//print("Wynik dodawania liczb: ",terminator: " ")
//liczbaA.dodawaniel(liczbaB: liczbaB).wyswietl()
//print("Wynik odejmowania liczb: ",terminator: " ")
//liczbaA.odejmowanie(liczbaB: liczbaB).wyswietl()
//
//var liczbaC = Liczby.init(liczbaA: 5, liczbaB: 6)
//var liczbaD = liczbaC.generujLiczbe()
//print("Wygenerowana liczba: \(liczbaD)")
//liczbaC.wyswietl()
//print("Liczba 1. podniesiona do potegi 4: \(liczbaC.podniesDoPotegi(ktoraLiczba: 1, potega: 4))")
//print("Liczba 2. podniesiona do potegi 1/3: \(liczbaC.podniesDoPotegi(ktoraLiczba: 2, potega: (1/3)))")
//print("Liczba 1. podniesiona do potegi 5: \(liczbaC.podniesDoPotegi(ktoraLiczba: 6, potega: 5))")
//print("------------------------------\nZadanie 3.")
//enum Errors: Error{
//    case dzieleniePrzezZero
//    case pierwiastekZLiczbyNiedodatniej
//    case ujemnyStopienPierwiastka
//}
//
//func walidujDzialania(dzielnik: Double, liczbaPierwiastkowana: Double) throws
//{
//    guard dzielnik != 0.0 else {
//        throw Errors.dzieleniePrzezZero
//    }
//    guard liczbaPierwiastkowana > 0 else {
//        throw Errors.pierwiastekZLiczbyNiedodatniej
//    }
//
//}
//
//let x = 5
//let y = 0
//
//let z = -5
//
//do{
//    try walidujDzialania(dzielnik: 0, liczbaPierwiastkowana: -5)
//    print("Poprawny dzielnik i pierwiastkowana liczba")
//}
//catch (Errors.dzieleniePrzezZero)
//{
//    print("Wystapila proba dzielenia przez 0. Nie mozna dzielic przez 0!")
//}
//catch (Errors.pierwiastekZLiczbyNiedodatniej)
//{
//    print("Wystapila proba pierwiastkowania liczby ujemnej lub rownej 0. Nie jest to dozowlone")
//}
//
//print("------------------------------\nZadanie 4.")
//func dzialania() throws{
//print("Wprowadz dzielna: ")
//var wprDzielna = readLine()!
//while(Double(wprDzielna) == nil)
//{
//    print("Wprowadz poprawna liczbe: ")
//    wprDzielna = readLine()!
//}
//
//let dzielna = Double(wprDzielna)!
//
//print("Wprowadz dzielnik: ")
//var wprDzielnik = readLine()!
//while(Double(wprDzielnik) == nil)
//{
//    print("Wprowadz poprawna liczbe: ")
//    wprDzielnik = readLine()!
//}
//let dzielnik = Double(wprDzielnik)!
//guard dzielnik != 0 else
//{
//    throw Errors.dzieleniePrzezZero
//}
//
//let wynikDzielenia = dzielna/dzielnik
//    print("Wynik dzielenia: \(wynikDzielenia)")
//
//print("Wprowadz liczbe do pierwiastkowania: ")
//var wprLiczbaPierw = readLine()!
//while(Double(wprLiczbaPierw) == nil)
//{
//        print("Wprowadz poprawna liczbe: ")
//        wprLiczbaPierw = readLine()!
//}
//    let liczbaDoPierw = Double(wprLiczbaPierw)!
//    guard liczbaDoPierw > 0 else
//    {
//        throw Errors.pierwiastekZLiczbyNiedodatniej
//    }
//
//    print("Wprowadz stopien pierwiastka: ")
//    var wprStopienPierw = readLine()!
//    while(Double(wprStopienPierw) == nil)
//    {
//            print("Wprowadz poprawna liczbe: ")
//            wprStopienPierw = readLine()!
//    }
//    let stopienPierw = Double(wprStopienPierw)!
//    guard stopienPierw > 0 || stopienPierw == 0 else
//    {
//        throw Errors.ujemnyStopienPierwiastka
//    }
//
//    let wynikPierwiastkowania = pow(liczbaDoPierw,stopienPierw)
//    print("Wynik pierwiastkowania: \(wynikPierwiastkowania)")
//}
//
//
//do {
//     try dzialania()
//}
//catch Errors.dzieleniePrzezZero
//{
//    print("Proba dzielenia przez 0. Nie mozna dzielic przez 0")
//}
//catch Errors.pierwiastekZLiczbyNiedodatniej
//{
//    print("Proba pierwiastkowania liczby niedodatniej. Pierwiastkownanie liczb niedodatnich nie jest dozwolone")
//}
//catch Errors.ujemnyStopienPierwiastka
//{
//    print("Proba pierwiastkowania z ujemnym stopniem pierwiastka. Pierwiastkowanie z ujemnym stopniem pierwistka nie jest dozwolone")
//}
print("-----------------------\nZadanie 12.4")
enum BledyBankomatowe: Error{
    case NiewystarczajaceSrodki
    case BrakKwotyWBAnkomacie
    case PrzekroczenieDziennegoLimitu
    case BrakNominalow
    case BlednaKwota
}

let kwotaWBankomacie = 1260.0
let kwotaNaKoncie = 813.0
let dziennyLimit = 500.0
let nominal10 = 6
let nominal20 = 10
let nominal50 = 10
let nominal100 = 5
func wywolanieBledow(kwota: Double) throws
{
    guard kwota < kwotaNaKoncie || kwota == kwotaNaKoncie else
    {
        throw BledyBankomatowe.NiewystarczajaceSrodki
    }
    guard kwota < kwotaWBankomacie || kwota == kwotaWBankomacie else
    {
        throw BledyBankomatowe.BrakKwotyWBAnkomacie
    }
    guard kwota < dziennyLimit || kwota == dziennyLimit else
    {
        throw BledyBankomatowe.PrzekroczenieDziennegoLimitu
    }
    guard ceil(kwota) == kwota else
    {
        throw BledyBankomatowe.BlednaKwota
    }
    guard Int(kwota)%10 == 0 else
    {
        throw BledyBankomatowe.BrakNominalow
    }
    
}

//var kwota = 50.0
//    do
//    {
//        try wywolanieBledow(kwota: kwota)
//        print("Transakcja przebiegla pomyslnie")
//    }
//    catch BledyBankomatowe.BlednaKwota
//    {
//        print("Wprowadzono niepoprawna kwote. Wprowadz poprawna kwote")
//    }
//    catch BledyBankomatowe.BrakNominalow
//    {
//        print("Brak odpowiednich nominalow do wyplacenia kwoty. Wprowadz inna kwote")
//    }
//    catch BledyBankomatowe.PrzekroczenieDziennegoLimitu
//    {
//        print("Twoj dzienny limit zostal przekroczony. Wprowadz inna kwote")
//    }
//    catch BledyBankomatowe.NiewystarczajaceSrodki
//    {
//        print("Nie masz wystarczajacych sreodkow na koncie. Wprowadz inna kwote")
//    }
//    catch BledyBankomatowe.BrakKwotyWBAnkomacie
//    {
//        print("W bankomacie nie ma wystarczajacej kwoty. Wprowadz inna kwote")
//    }

    
func Bankomat() throws
{
    print("Wprowadz kwote, ktora chcesz wyplacic: ")
    var wprKwota = readLine()!
    while(Double(wprKwota) == nil)
    {
        print("Wprowadz poprawna kwote w systemie dziesietnym: ")
        wprKwota = readLine()!
    }
    let kwota = Double(wprKwota)!
    
    print("Czy chcesz wybrac nominal, w wjakim ma byc wyplacona kwota: ?\n(Jesli tak, wprowadz - Tak, w przciwnym razie wprowadz dowolny znak) ")
    let dec = readLine()!
    if(dec=="Tak")
    {
        print("Wybierz nominal\n10\n20\n50\nlub 100")
        var nom = readLine()!
        while(Int(nom)! != 10 && Int(nom)! != 20 && Int(nom)! != 50 && Int(nom)! != 100)
        {
            print("Wprowadz poprawny nominal: ")
            nom = readLine()!
        }
        let x = Int(nom)!
        
        switch(x)
        {
        case 10:
            guard Int(kwota)%10 == 0 && ( Int(kwota/10.0) < nominal10 || Int(kwota/10.0) == nominal10) else
            {
                throw BledyBankomatowe.BrakNominalow
            }
        case 20:
            guard Int(kwota)%20 == 0 && ( Int(kwota/20.0) < nominal10 || Int(kwota/20.0) == nominal10) else
            {
                throw BledyBankomatowe.BrakNominalow
            }
        case 50:
            guard Int(kwota)%50 == 0 && ( Int(kwota/50.0) < nominal10 || Int(kwota/50.0) == nominal10) else
            {
                throw BledyBankomatowe.BrakNominalow
            }
        case 100:
            guard Int(kwota)%100 == 0 && ( Int(kwota/100.0) < nominal10 || Int(kwota/100.0) == nominal10) else
            {
                throw BledyBankomatowe.BrakNominalow
            }
        default:
            print("Poprawny nominal")
        }
    }
    else {
        
    }
    guard kwota < kwotaNaKoncie || kwota == kwotaNaKoncie else
    {
        throw BledyBankomatowe.NiewystarczajaceSrodki
    }
    guard kwota < kwotaWBankomacie || kwota == kwotaWBankomacie else
    {
        throw BledyBankomatowe.BrakKwotyWBAnkomacie
    }
    guard kwota < dziennyLimit || kwota == dziennyLimit else
    {
        throw BledyBankomatowe.PrzekroczenieDziennegoLimitu
    }
    guard ceil(kwota) == kwota else
    {
        throw BledyBankomatowe.BlednaKwota
    }
    guard Int(kwota)%10 == 0 else
    {
        throw BledyBankomatowe.BrakNominalow
    }
   
}
do
{
    try Bankomat()
    print("Transakcja przebiegla pomyslnie")
}
catch BledyBankomatowe.BlednaKwota
{
    print("Wprowadzono niepoprawna kwote. Wprowadz poprawna kwote")
}
catch BledyBankomatowe.BrakNominalow
{
    print("Brak odpowiednich nominalow do wyplacenia kwoty. Wprowadz inna kwote")
}
catch BledyBankomatowe.PrzekroczenieDziennegoLimitu
{
    print("Twoj dzienny limit zostal przekroczony. Wprowadz inna kwote")
}
catch BledyBankomatowe.NiewystarczajaceSrodki
{
    print("Nie masz wystarczajacych sreodkow na koncie. Wprowadz inna kwote")
}
catch BledyBankomatowe.BrakKwotyWBAnkomacie
{
    print("W bankomacie nie ma wystarczajacej kwoty. Wprowadz inna kwote")
}


