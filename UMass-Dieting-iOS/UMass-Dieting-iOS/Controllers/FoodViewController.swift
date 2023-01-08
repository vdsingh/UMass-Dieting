//
//  FoodViewController.swift
//  UMass-Dieting-iOS
//
//  Created by Vikram Singh on 11/12/22.
//

import Foundation
import UIKit
class FoodViewController: UIViewController {
    var food: Food? = nil

    @IBOutlet weak var foodNameLabel: UILabel!
    @IBOutlet weak var servingSizeLabel: UILabel!
    @IBOutlet weak var nutritionLabelView: UIView!
    @IBOutlet weak var caloriesNumberLabel: UILabel!
    @IBOutlet weak var fatCalLabel: UILabel!
    @IBOutlet weak var totalFatNumberLabel: UILabel!
    @IBOutlet weak var saturatedFatNumberLabel: UILabel!
    @IBOutlet weak var transFatNumberLabel: UILabel!
    @IBOutlet weak var cholesterolNumberLabel: UILabel!
    @IBOutlet weak var sodiumNumberLabel: UILabel!
    @IBOutlet weak var carbohydratesNumberLabel: UILabel!
    @IBOutlet weak var dietaryFiberNumberLabel: UILabel!
    @IBOutlet weak var sugarNumberLabel: UILabel!
    @IBOutlet weak var proteinNumberLabel: UILabel!
    @IBOutlet weak var ingredientsTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nutritionLabelView.layer.borderWidth = 3
        nutritionLabelView.layer.borderColor = UIColor.label.cgColor
        updateNutritionLabel()
    }
    
    func updateNutritionLabel() {
        guard let food = self.food else {
            fatalError("$ERROR: Food is nil.")
        }
        if let dish_name = food.dish_name {
            foodNameLabel.text = "\(dish_name)"
        }
        
        servingSizeLabel.text = "\(food.serving_size ?? "")"
        caloriesNumberLabel.text = "\(food.calories ?? -1)"
        totalFatNumberLabel.text = "\(food.total_fat ?? -1)"
        saturatedFatNumberLabel.text = "\(food.sat_fat ?? -1)"
        transFatNumberLabel.text = "\(food.trans_fat ?? -1)"
        cholesterolNumberLabel.text = "\(food.cholesterol ?? -1)"
        sodiumNumberLabel.text = "\(food.sodium ?? -1)"
        carbohydratesNumberLabel.text = "\(food.total_carbs ?? -1)"
        dietaryFiberNumberLabel.text = "\(food.dietary_fiber ?? -1)"
        sugarNumberLabel.text = ""
        proteinNumberLabel.text = "\(food.protein ?? -1)"
        ingredientsTextView.text = "Ingredients: \(food.ingredients ?? "")"
    }
}
