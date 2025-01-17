//
//  ViewController.swift
//  funnycatch
//
//  Created by İbrahim Toytekin on 16.01.2025.
//

import UIKit

class ViewController: UIViewController {
    // Detaylı anlatım
    // DEğişkenler
    var score=0
    
    // Timer
    var timer=Timer()
    var counter=0
    // Label
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var higLaabel: UILabel!
    // Image
    @IBOutlet weak var keny1: UIImageView!
    @IBOutlet weak var keny2: UIImageView!
    @IBOutlet weak var keny3: UIImageView!
    @IBOutlet weak var keny4: UIImageView!
    @IBOutlet weak var keny5: UIImageView!
    @IBOutlet weak var keny6: UIImageView!
    @IBOutlet weak var keny7: UIImageView!
    @IBOutlet weak var keny8: UIImageView!
    @IBOutlet weak var keny9: UIImageView!
    @IBOutlet weak var keny10: UIImageView!
    @IBOutlet weak var keny11: UIImageView!
    @IBOutlet weak var keny12: UIImageView!
    @IBOutlet weak var keny13: UIImageView!
    @IBOutlet weak var keny14: UIImageView!
    @IBOutlet weak var keny15: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text="Score: \(score)"
        // Do any additional setup after loading the view.
        // Görsellere tıklanabilirliği aktif hale getirme
        keny1.isUserInteractionEnabled=true
        keny2.isUserInteractionEnabled=true
        keny3.isUserInteractionEnabled=true
        keny4.isUserInteractionEnabled=true
        keny5.isUserInteractionEnabled=true
        keny6.isUserInteractionEnabled=true
        keny7.isUserInteractionEnabled=true
        keny8.isUserInteractionEnabled=true
        keny9.isUserInteractionEnabled=true
        keny10.isUserInteractionEnabled=true
        keny11.isUserInteractionEnabled=true
        keny12.isUserInteractionEnabled=true
        keny13.isUserInteractionEnabled=true
        keny14.isUserInteractionEnabled=true
        keny15.isUserInteractionEnabled=true
       // Dokunma eylemi için yapılacaklar
        let recegnoter1=UITapGestureRecognizer(target: self, action: #selector(fonksiyonum))
        let recegnoter2=UITapGestureRecognizer(target: self, action: #selector(fonksiyonum))
        let recegnoter3=UITapGestureRecognizer(target: self, action: #selector(fonksiyonum))
        let recegnoter4=UITapGestureRecognizer(target: self, action: #selector(fonksiyonum))
        let recegnoter5=UITapGestureRecognizer(target: self, action: #selector(fonksiyonum))
        let recegnoter6=UITapGestureRecognizer(target: self, action: #selector(fonksiyonum))
        let recegnoter7=UITapGestureRecognizer(target: self, action: #selector(fonksiyonum))
        let recegnoter8=UITapGestureRecognizer(target: self, action: #selector(fonksiyonum))
        let recegnoter9=UITapGestureRecognizer(target: self, action: #selector(fonksiyonum))
        let recegnoter10=UITapGestureRecognizer(target: self, action: #selector(fonksiyonum))
        let recegnoter11=UITapGestureRecognizer(target: self, action: #selector(fonksiyonum))
        let recegnoter12=UITapGestureRecognizer(target: self, action: #selector(fonksiyonum))
        let recegnoter13=UITapGestureRecognizer(target: self, action: #selector(fonksiyonum))
        let recegnoter14=UITapGestureRecognizer(target: self, action: #selector(fonksiyonum))
        let recegnoter15=UITapGestureRecognizer(target: self, action: #selector(fonksiyonum))

        
        // Görsele tıklama olayını atama
        keny1.addGestureRecognizer(recegnoter1)
        keny2.addGestureRecognizer(recegnoter2)
        keny3.addGestureRecognizer(recegnoter3)
        keny4.addGestureRecognizer(recegnoter4)
        keny5.addGestureRecognizer(recegnoter5)
        keny6.addGestureRecognizer(recegnoter6)
        keny7.addGestureRecognizer(recegnoter7)
        keny8.addGestureRecognizer(recegnoter8)
        keny9.addGestureRecognizer(recegnoter9)
        keny10.addGestureRecognizer(recegnoter10)
        keny11.addGestureRecognizer(recegnoter11)
        keny12.addGestureRecognizer(recegnoter12)
        keny13.addGestureRecognizer(recegnoter13)
        keny14.addGestureRecognizer(recegnoter14)
        keny15.addGestureRecognizer(recegnoter15)
        
        
        // Timer İşlemi
        counter=10
        timeLabel.text="\(counter)"
        
        timer=Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(counterDown), userInfo: nil, repeats: true)
      
   
        
    }
    @objc func fonksiyonum(){
        
        score+=1
        scoreLabel.text="Score: \(score)"
        
    }
    @objc func counterDown ( ){

        
        counter-=1
        timeLabel.text=String(counter)
        
        
        if counter==0 {
            timer.invalidate()
            
            // Alert
            let alert=UIAlertController(title: "Uyarı", message: "Zamanın Doldu", preferredStyle: UIAlertController.Style.alert)
            let okButton=UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel)
            let replayButton=UIAlertAction(title: "Replay", style: UIAlertAction.Style.default) { UIAlertAction in
                // Codların yazılacağı alan burada olacak
                self.counter=10
                self.timer=Timer.scheduledTimer(timeInterval: 1, target:self, selector: #selector(self.counterDown), userInfo: nil, repeats: true)
               
            }
            alert.addAction(okButton)
            alert.addAction(replayButton )
            self.present(alert, animated:true, completion: nil)
         
            
        } else {
                    
        }
    }

}

