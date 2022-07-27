//
//  ChartDataStorage.swift
//  ChartPlayground
//
//  Created by Cc C on 2022/7/26.
//
import Foundation
import SwiftUI


class ChartDataStorage{
    
    var elements = [CGFloat]()
    var total = CGFloat()
    var min = CGFloat()
    var max = CGFloat()
    var len = -1
    
        
    init<T: Numeric>(_ data: [T]){
        self.min = topAsCGFloat(Int64.max)
        self.max = topAsCGFloat(Int64.min)
        self.len = size()
        
        for num in data{
            
            let element = topAsCGFloat(num)
            
            total += element
            
            if (min < element){
                min = element
            }else if(max > element){
                max = element
            }
        
            elements.append(element)
        }
        
        
    }
    
    func add<T: Numeric>(singleElemnt: T){
        elements.append(topAsCGFloat(singleElemnt))
    }
    
    func size() -> Int {
        return elements.count
    }
    
    func clean() -> Bool{
        elements = []
        return true
    }
    
    private func topAsCGFloat<T : Numeric>(_ top: T) -> CGFloat {
        return CGFloat(fromNumeric: top)
    }

    
    
}


//
//coding from https://stackoverflow.com/questions/39486362/how-to-cast-generic-number-type-t-to-cgfloat
//author: Hamish
protocol Numeric : Comparable, Equatable {

    init(_ v:Float)
    init(_ v:Double)
    init(_ v:Int)
    init(_ v:UInt)
    init(_ v:Int8)
    init(_ v:UInt8)
    init(_ v:Int16)
    init(_ v:UInt16)
    init(_ v:Int32)
    init(_ v:UInt32)
    init(_ v:Int64)
    init(_ v:UInt64)
    init(_ v:CGFloat)

    // 'shadow method' that allows instances of Numeric
    // to coerce themselves to another Numeric type
    func _asOther<T:Numeric>() -> T
}

extension Numeric {

    // Default implementation of init(fromNumeric:) simply gets the inputted value
    // to coerce itself to the same type as the initialiser is called on
    // (the generic parameter T in _asOther() is inferred to be the same type as self)
    init<T:Numeric>(fromNumeric numeric: T) { self = numeric._asOther() }
}

extension Float   : Numeric {func _asOther<T:Numeric>() -> T { return T(self) }}
extension Double  : Numeric {func _asOther<T:Numeric>() -> T { return T(self) }}
extension CGFloat : Numeric {func _asOther<T:Numeric>() -> T { return T(self) }}
extension Int     : Numeric {func _asOther<T:Numeric>() -> T { return T(self) }}
extension Int8    : Numeric {func _asOther<T:Numeric>() -> T { return T(self) }}
extension Int16   : Numeric {func _asOther<T:Numeric>() -> T { return T(self) }}
extension Int32   : Numeric {func _asOther<T:Numeric>() -> T { return T(self) }}
extension Int64   : Numeric {func _asOther<T:Numeric>() -> T { return T(self) }}
extension UInt    : Numeric {func _asOther<T:Numeric>() -> T { return T(self) }}
extension UInt8   : Numeric {func _asOther<T:Numeric>() -> T { return T(self) }}
extension UInt16  : Numeric {func _asOther<T:Numeric>() -> T { return T(self) }}
extension UInt32  : Numeric {func _asOther<T:Numeric>() -> T { return T(self) }}
extension UInt64  : Numeric {func _asOther<T:Numeric>() -> T { return T(self) }}


//
