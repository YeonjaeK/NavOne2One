//
//  WeekViewController.swift
//  ass
//
//  Created by 연쟁 on 2018. 4. 22..
//  Copyright © 2018년 연쟁. All rights reserved.
//

import UIKit

class WeekViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var confirmButton: UIButton!
    @IBOutlet var pickerWeek: UIPickerView!
    
    let yearArray: Array<String> = ["2014년","2015년", "2016년", "2017년", "2018년"]
    let monthArray: [String] = ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"]
    let weekArray : [String] = ["첫째 주", "둘째 주", "셋째 주", "넷째 주","마지막 주"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int { return 3 } //컴포넌트 3개이므로
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return yearArray.count }
        else if component == 1 {
            return monthArray.count }
        else {
            return weekArray.count }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return yearArray[row] }
        else if component == 1
        {
            return monthArray[row] }
        else
        {   return weekArray[row] }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "dateView"{
        //OK버튼을 눌렀을때 메인으로 show해주는 segue

            let destVC = segue.destination as! ViewController
            let year: String = yearArray[self.pickerWeek.selectedRow(inComponent: 0)]
            let month: String = monthArray[self.pickerWeek.selectedRow(inComponent: 1)]
            let week: String = weekArray[self.pickerWeek.selectedRow(inComponent: 2)]
            
            destVC.info = year + " " + month + " " + week //메인 label에 보여주기 위해서
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
