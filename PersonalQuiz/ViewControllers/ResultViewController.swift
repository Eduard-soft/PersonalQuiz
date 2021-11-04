//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Nikita Zharinov on 01/11/2021.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var resultTypeLabel: UILabel!
    @IBOutlet weak var resultTextLabel: UILabel!
    
    @IBOutlet weak var leftBarButton: UINavigationItem!
    
    var answerChosen: [Answer] = []
    
    

    
   

    override func viewDidLoad() {
        super.viewDidLoad()
       // print(answerChosen)
        hideBackBarButtonItem()
        apdateUI(with: .dog)
    }
    
   
        
}
   
    // 1. Передать сюда массив с ответами
    // 2. Определить наиболее часто встречающийся тип животного
    // 3. Отобразить результаты в соотвствии с этим животным
    // 4. Избавиться от кнопки возврата назад на экране результатов

extension ResultViewController {
    private func hideBackBarButtonItem() {
        navigationItem.hidesBackButton = true
    }
    
    private func apdateUI(with animal: AnimalType) {
        resultTypeLabel.text = "Вы - \(animal.rawValue)!"
        resultTextLabel.text = animal.definition
    }
        
    
    
    
    
    
    
}

