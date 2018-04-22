//
//  FeelingViewController.swift
//  ass
//
//  Created by 연쟁 on 2018. 4. 16..
//  Copyright © 2018년 연쟁. All rights reserved.
//

import UIKit

class FeelingViewController: UIViewController {

    @IBOutlet var emotion1: UIButton!
    @IBOutlet var emotion2: UIButton!
    @IBOutlet var emotion3: UIButton!
    // @IBOutlet var emotion3: UIButton!
    //버튼 누를때마다 모든버튼 디폴트이미지로 바꾸는 메소드를 만들자!
    //그 후에 지정한 버튼만 바꾸고
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBAction func A(_ sender: UIButton){
        let b: ViewController = self.navigationController!.viewControllers[0] as! ViewController
        if(sender.tag == 1){
        
            b.whatDo.setImage(#imageLiteral(resourceName: "dateClick.png"), for:.normal)
        }
        else if(sender.tag == 2){
           
            b.whatDo.setImage(#imageLiteral(resourceName: "musicClick.png"),for: .normal)
        }
        else if(sender.tag == 3){
         
            b.whatDo.setImage(#imageLiteral(resourceName: "eatClick.png"),for: .normal)
        }
      self.navigationController?.popViewController(animated:true)
    }
    
   /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "change" {
    let destVC2 = segue.destination as! ViewController
           func B(_ sender: UIButton){
            if (sender.tag == 1)
            {
                let ordered2: UIImage! = #imageLiteral(resourceName: "ex1.png")
               // destVC2.info1 = ordered2
            }
            else if (sender.tag == 2)
            {
                let ordered2 : UIImage = #imageLiteral(resourceName: "ex2.png")
                //destVC2.info1 = ordered2
            }
            
            }
        }
     */
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
        
        
        
        
}

