import AVFoundation
import UIKit

class ViewController: UIViewController {

    var player:AVAudioPlayer?
    
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
        guard let url = Bundle.main.url(forResource: sound, withExtension: "m4a") else { return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            guard let player = player else { return }
            
            player.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
}

