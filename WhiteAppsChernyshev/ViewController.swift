//
//  ViewController.swift
//  WhiteAppsChernyshev
//
//  Created by Андрей Чернышев on 05.02.2022.
//

import UIKit

final class ViewController: UIViewController {
    // Здесь я описываю себя
    let firstName = "Андрей"
    let lastName = "Чернышев"
    var age = 29 {
        willSet {
            print("будет исполнено \(newValue) лет")
        }
        didSet {
            print("исполнено \(oldValue) лет")
        }
    }
    let iAmMan = true
    var myHeight: Int = 182
    var myWeight: Float = 81.3
    
    // Описываю книгу
    let bookWidth = 180
    let bookHeight = 240
    let bookName = "Граф Монте-Кристо"
    let bookAuthor = "Александр Дюма"
    let bookNumberOfPages = 1344
    var iReadItBook = true
    
    // double vs float
    let timestamp: Double = 123123123 // для таймстемпа нужна высокая точность
    let rectWidth: Float = 124.5 // вряд ли потребуется ширина объекта с точностью больше 6 десятичных цифр
    
    // Интерполяция строк
    lazy var me = "Привет. Меня зовут \(firstName), фамилия \(lastName). Мне \(age) лет, я \(iAmMan ? "мужчина" : "женщина"). Мой рост \(myHeight) см и вес \(myWeight) кг."
    
    // Конструктор String(format:)
    lazy var book = String(format: "Автор книги %@ - %@. Книга написана на %i страниц, размеры %i/%i. %@", bookName, bookAuthor, bookNumberOfPages, bookWidth, bookHeight, iReadItBook ? "Я прочитал эту книгу, всем советую." : "Я еще не читал эту книгу, но скоро сделаю это.")
    
    // арифметические операции
    let moreLess = (2 + 10) > (15 - 10)
    let equal = (10 * 2) == (40 / 2)
    
    // тернарный оператор
    lazy var ternary = equal ? "equal" : "not equal"
    
    // вычисляемые свойства
    var myAge: Int {
        set {
            age = newValue
        }
        get {
            age
        }
    }
    
    var myFullName: String {
        String(format: "%@ %@", firstName, lastName)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        printResults()
    }
    
    func printResults() {
        print(me)
        print(book)

        sum(value1: 1, value2: 2) { result in
            print(result)
        }

        let resultOperation = operation(with: "Андрей", value2: "Чернышев") { firstName, lastName -> String in
            return String(format: "Привет, %@ %@", firstName, lastName)
        }
        print(resultOperation)

        age = 29
        
        let checkResult = checkAge(19, name: "Андрей")
        print(checkResult)
    }
    
    func checkAge(_ age: Int, name: String) -> String {
        if age > 18 {
            return "Доступ разрешен для \(name)"
        } else {
            return "Доступ запрещен для \(name)"
        }
    }
    
    func sum(value1: Double, value2: Float, completion: (Double) -> Void) {
        let result = value1 + Double(value2)
        completion(result)
    }
    
    func operation(with value1: String, value2: String, operation: (String, String) -> String) -> String {
        return operation(value1, value2)
    }
}
