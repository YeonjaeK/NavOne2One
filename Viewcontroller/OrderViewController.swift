//
//  OrderViewController.swift
//  Viewcontroller
//
//  Created by 연쟁 on 2018. 4. 4..
//  Copyright © 2018년 연쟁. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController {

    @IBOutlet var infoLabel: UILabel!
    var info:String? //값이 없을 수도 있다
    //segway viewcontroller public변수처럼 가져오기
    //info
    //자료를 상위뷰에서 받아오기위해서
    override func viewDidLoad() {
    // 뷰가 메모리는 있는데 화면에는 보이지 않는경우
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let contentString = info {
            infoLabel.text = contentString }
        //전달받은 값이 있으면 label에 값을 쓴다
    }

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
