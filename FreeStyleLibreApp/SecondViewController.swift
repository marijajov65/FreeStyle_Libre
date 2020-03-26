//
//  SecondViewController.swift
//  FreeStyleLibreApp
//
//  Created by Marija Jovicic on 3/24/20.
//  Copyright © 2020 Marija Jovicic. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var choice: UILabel!
    let foods = [ "Omlette", "Oatmeal", "Pastry", "Muffin", "Coffee","PB and Jelly", "Hamburger", "Pizza", "Donut","Fruit"]
    
    
    @IBOutlet weak var myLabel1: UILabel!
    //var receivedPhrase = String ()
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return foods[row]
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return foods.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        choice.text = foods[row]
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        //myLabel1.text = receivedPhrase
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newVC: ViewController = segue.destination as! ViewController
        var glucoseSpike = 0
        let  passedPhrase = choice.text
        if(passedPhrase == "Omlette"){
            glucoseSpike = 8
        }
        newVC.receivedPhrase = glucoseSpike
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    

}

/*
extension ViewController:UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        searchFood =  data.filter({$0.prefix(searchText.count) == searchText})
    }
 
}
*/
