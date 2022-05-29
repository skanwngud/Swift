//
//  ViewController.swift
//  imageView_mission
//
//  Created by JoohyeongYoo on 2022/05/29.
//

import UIKit

class ViewController: UIViewController {
    var maxImageNum = 6
    var minImageNum = 1
    var imageNum = 1
    
    var currentImage: UIImage?
    
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        currentImage = UIImage(named: String(imageNum) + ".png")
        imageView.image = currentImage
    }
    @IBAction func bttnPrev(_ sender: UIButton) {
        imageNum += 1
        if imageNum > maxImageNum {
            imageNum = maxImageNum
        }
        currentImage = UIImage(named: String(imageNum) + ".png")
        
        imageView.image = currentImage
    }
    @IBAction func bttnNext(_ sender: UIButton) {
        imageNum -= 1
        if imageNum < minImageNum {
            imageNum = minImageNum
        }
        currentImage = UIImage(named: String(imageNum) + ".png")
        
        imageView.image = currentImage
    }
    

}

