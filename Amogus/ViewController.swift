import AVFoundation
import UIKit

class ViewController: UIViewController {

    var player:AVAudioPlayer!
    
    @IBAction func amogusButton(_ sender: UIButton) {
        playSound(sound: "amogus")
        print("Debug: amogus!")
    }
    
    @IBAction func ooofButton(_ sender: Any) {
        print("Debug: OOOOF")
        playSound(sound: "oooof")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    func playSound(sound:String) {  

        let url = Bundle.main.url(forResource: sound, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
