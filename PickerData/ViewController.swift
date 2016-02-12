//
//  ViewController.swift
//  PickerData
//
//  Created by MAC on 2/10/16.
//  Copyright © 2016 AMIT SHARMA. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    let mood_array=["Happy","Sad","Feeling Exicted","Mood-Off","Upset","Loving","Funny","Crazy"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return mood_array.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return mood_array[row]
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var newbackground:UIColor
        switch row{
        case 0,2,4:
            newbackground=UIColor.yellowColor()
        case 1,3,5:
            newbackground=UIColor.darkGrayColor()
        default :
            newbackground=UIColor(red: 200/255, green: 255/255, blue: 200/255, alpha: 1.0)
        }
        self.view.backgroundColor=newbackground
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

