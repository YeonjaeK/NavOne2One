//
//  ViewController.swift
//  ass
//
//  Created by 연쟁 on 2018. 4. 16..
//  Copyright © 2018년 연쟁. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
 
    @IBOutlet var sunButton: UIButton!
    @IBOutlet var satButton: UIButton!
    @IBOutlet var friButton: UIButton!
    @IBOutlet var thuButton: UIButton!
    @IBOutlet var wedButton: UIButton!
    @IBOutlet var tueButton: UIButton!
    @IBOutlet var monButton: UIButton!

    @IBOutlet var datebutton: UIButton!
   
    @IBOutlet var whatDo: UIButton!
    
    @IBOutlet var labelDisplay1: UILabel!
    @IBOutlet var labelDisplay2: UILabel!
    @IBOutlet var labelDisplay3: UILabel!
    @IBOutlet var labelDisplay4: UILabel!
    @IBOutlet var labelDisplay5: UILabel!
    @IBOutlet var labelDisplay6: UILabel!
    @IBOutlet var labelDisplay7: UILabel!
    
    var info: String?

    var buttonNumber: Int = 0

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let contentString = info {
          datebutton.setTitle(contentString, for: .normal)
        //WeekViewController에서 연결된 segue를 통해 pickerview에서 선택한 년도, 월, 주차를 받아와 버튼에 써있는 타이틀을 바꿔줌
        }
    }
    
   @IBAction func Button1Clicked(_ sender: Any) {
        let textVC:AddDiaryViewController  = self.storyboard?.instantiateViewController(withIdentifier: "TextVC") as! AddDiaryViewController
    
            textVC.buttonNumber = 1
        navigationController?.pushViewController(textVC, animated: true)
    }
    
    @IBAction func Button2Clicked(_ sender: Any) {
        let textVC:AddDiaryViewController  = self.storyboard?.instantiateViewController(withIdentifier: "TextVC") as! AddDiaryViewController
        
            textVC.buttonNumber = 2
        navigationController?.pushViewController(textVC, animated: true)
    }
    
    @IBAction func Button3Clicked(_ sender: Any) {
        let textVC:AddDiaryViewController  = self.storyboard?.instantiateViewController(withIdentifier: "TextVC") as! AddDiaryViewController
        
        textVC.buttonNumber = 3
        navigationController?.pushViewController(textVC, animated: true)
    }
    
    @IBAction func Button4Clicked(_ sender: Any) {
        let textVC:AddDiaryViewController  = self.storyboard?.instantiateViewController(withIdentifier: "TextVC") as! AddDiaryViewController
        
        textVC.buttonNumber = 4
        navigationController?.pushViewController(textVC, animated: true)
    }
    
    @IBAction func Button5Clicked(_ sender: Any) {
        let textVC:AddDiaryViewController  = self.storyboard?.instantiateViewController(withIdentifier: "TextVC") as! AddDiaryViewController
        
        textVC.buttonNumber = 5
        navigationController?.pushViewController(textVC, animated: true)
    }
    
    @IBAction func Button6Clicked(_ sender: Any) {
        let textVC:AddDiaryViewController  = self.storyboard?.instantiateViewController(withIdentifier: "TextVC") as! AddDiaryViewController
        
        textVC.buttonNumber = 6
        navigationController?.pushViewController(textVC, animated: true)
    }
    
    @IBAction func Button7Clicked(_ sender: Any) {
        let textVC:AddDiaryViewController  = self.storyboard?.instantiateViewController(withIdentifier: "TextVC") as! AddDiaryViewController
        
        textVC.buttonNumber = 7
        navigationController?.pushViewController(textVC, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /* 실패한 코드
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     if segue.identifier == "mon" {
     let textVC = segue.destination as! AddDiaryViewController
     textVC.buttonNumber = 1
     }
     
     if segue.identifier == "tue"
     {
     let textVC = segue.destination as! AddDiaryViewController
     textVC.buttonNumber = 2
     }
     }*/
    

}

