//
//  ViewController.swift
//  ImageView
//
//  Created by JoohyeongYoo on 2022/05/29.
//

import UIKit

class ViewController: UIViewController {
    var isZoom = false  // 확대 여부를 나타내는 변수
    var imgOn: UIImage? // 켜진 전구 이미지가 있는 UIImage 타입의 변수
    var imgOff: UIImage? // 꺼진 전구 이미지가 있는 UIImage 타입의 변수
    
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var bttnResize: UIButton!
    
    
    override func viewDidLoad() {
    // 내가 만든 뷰를 불러왔을 때 호출 되는 함수로 뷰에서 실행하고자하는 기능이 필요할 때 해당 함수 내에서 코드를 입력하면 된다.
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgOn = UIImage(named: "lamp_on.png")
        imgOff = UIImage(named: "lamp_off.png")
        
        imgView.image = imgOn
    }


    @IBAction func bttnResizeImage(_ sender: UIButton) {
        let scale:CGFloat = 2.0
        var newWidth: CGFloat, newHeight:CGFloat
        
        if (isZoom) {                                                       // 현재가 "확대"일 때
            newWidth = imgView.frame.width / scale                          // width 에 scale 을 나눔 (축소)
            newHeight = imgView.frame.height / scale                        // height 에 scale 을 나눔 (축소)
            
            bttnResize.setTitle("확대", for:.normal)                         // 버튼의 텍스트를 확대로 변경
        }
        else {                                                              // 현재가 "축소"일 때
            newWidth = imgView.frame.width * scale                          // width 에 scale 을 곱함 (확대)
            newHeight = imgView.frame.height * scale                        // height 에 scale 을 곱함 (확대)
            
            bttnResize.setTitle("축소", for:.normal)                         // 버튼의 텍스트를 축소로 변경
        }
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)     // CGSize 메서드를 사용하여 이미지 뷰의 프레임 크기를 변경
        
        isZoom = !isZoom                                                    // isZoom 상태를 반대로 바꿔줌 (true <-> false)
    }
        
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        if sender.isOn {
            imgView.image = imgOn
        }
        
        else {
            imgView.image = imgOff
        }
    }
}

// 기본 데이터 자료형
// Bool
// Int, Int32, Int64: 큰 정수
// Int8, Int16: 작은 정수
// UInt, UInt32, UInt65: 큰 양수
// UInt8, UInt16: 작은 양수
// Float, Double
// Character
// String
