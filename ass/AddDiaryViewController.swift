//
//  AddDiaryViewController.swift
//  ass
//
//  Created by 연쟁 on 2018. 4. 16..
//  Copyright © 2018년 연쟁. All rights reserved.
//

import UIKit

class AddDiaryViewController: UIViewController, UITextFieldDelegate
 {

    @IBOutlet var sendText: UITextView!
    @IBOutlet var emotiontextFieldInput: UITextField!
    var buttonNumber: Int = 0
  
    override func viewDidLoad() {
        super.viewDidLoad()
            // Do any additional setup after loading the view.
    sendText.layer.cornerRadius = 15
        //textView를 모서리를 둥글게 만들기 위해서
    }
    

   @IBAction func SendButtonClicked(_ sender: Any) {
        let a: ViewController = self.navigationController!.viewControllers[0] as! ViewController
    
        //메인에서 월요일버튼 눌렸을때
        if(buttonNumber==1) {
            a.monButton.setTitle(sendText.text, for: .normal)
            //사용자가 입력한 후에는 글자가 검정으로 바뀌도록 함
            a.monButton.setTitleColor(UIColor.black, for: .normal)
            a.labelDisplay1.textColor = UIColor.black
            a.labelDisplay1.text = emotiontextFieldInput.text
            
        }
        //화요일버튼
        else if (buttonNumber==2) {
      
            a.tueButton.setTitle(sendText.text, for: .normal)
            a.tueButton.setTitleColor(UIColor.black, for: .normal)
            a.labelDisplay2.textColor = UIColor.black
            a.labelDisplay2.text = emotiontextFieldInput.text
        }
        //수요일버튼
       else if (buttonNumber==3)
        {
            a.wedButton.setTitle(sendText.text, for: .normal)
            a.wedButton.setTitleColor(UIColor.black, for: .normal)
            a.labelDisplay3.textColor = UIColor.black
            a.labelDisplay3.text = emotiontextFieldInput.text
        }
        //목요일버튼
        else if (buttonNumber==4)
        {
            
            a.thuButton.setTitle(sendText.text, for: .normal)
            a.thuButton.setTitleColor(UIColor.black, for: .normal)
            a.labelDisplay4.textColor = UIColor.black
            a.labelDisplay4.text = emotiontextFieldInput.text
            
         }
        //금요일버튼
        else if (buttonNumber==5)
        {
            
            a.friButton.setTitle(sendText.text, for: .normal)
            a.friButton.setTitleColor(UIColor.black, for: .normal)
            a.labelDisplay5.textColor = UIColor.black
            a.labelDisplay5.text = emotiontextFieldInput.text
        }
        //토요일버튼
        else if (buttonNumber==6)
        {
            
            a.satButton.setTitle(sendText.text, for: .normal)
            a.satButton.setTitleColor(UIColor.black, for: .normal)
            a.labelDisplay6.textColor = UIColor.black
            a.labelDisplay6.text = emotiontextFieldInput.text
        }
        //일요일버튼
        else if (buttonNumber==7)
        {
            
            a.sunButton.setTitle(sendText.text, for: .normal)
            a.sunButton.setTitleColor(UIColor.black, for: .normal)
            a.labelDisplay7.textColor = UIColor.black
            a.labelDisplay7.text = emotiontextFieldInput.text
        }

    
        self.navigationController?.popViewController(animated:true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    
  /*
     실패한 코드
     
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toOrderView" {
            let destVC = segue.destination as! ViewController
            let ordered: String! = sendText.text
            //destVC.title = ordered
            var outString: String = ""
            
            outString += ordered
            
            destVC.info = outString
            var receiveButton : UIButton
            
            if(buttonNumber==1){
                
            receiveButton = destVC.monButton
                
            }else if(buttonNumber==2 ){
              receiveButton = destVC.tueButton
            }
            destVC.button = receiveButton
    }
    }*/
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

