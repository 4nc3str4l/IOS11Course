import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer: AVAudioPlayer!
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        let selectedFileName : String = soundArray[sender.tag - 1]
        playSound(note: selectedFileName)
    }
    
    func playSound(note :String){
        let soundURL = Bundle.main.url(forResource: note, withExtension: "wav")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }catch{
            print(error)
        }
        audioPlayer.play()
    }
}

