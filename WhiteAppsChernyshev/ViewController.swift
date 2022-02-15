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
    var age = 29
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(me)
        print(book)
    }
}
