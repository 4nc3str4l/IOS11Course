import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    
    let allQuestions = QuestionBank()
    var pickedAnswer: Bool = false
    var questionNumber: Int = 0
    var score: Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        nextQuestion()
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        pickedAnswer = sender.tag == 1
        checkAnswer()
        nextQuestion()
    }
    
    
    func updateUI() {
        progressLabel.text = "\(questionNumber + 1) / \(allQuestions.list.count)"
        scoreLabel.text = "Score: \(score)"
        progressBar.frame.size.width = (view.frame.size.width) / CGFloat(allQuestions.list.count) * CGFloat(questionNumber + 1)
    }
    

    func nextQuestion() {
        questionLabel.text = allQuestions.list[questionNumber].questionText
        questionNumber+=1
        if questionNumber == allQuestions.list.count{
            let alert = UIAlertController(title: "Awesome", message: "You've finished all the questions, do you want to start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in self.startOver()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    func checkAnswer() {
        if(pickedAnswer == allQuestions.list[questionNumber].answer){
            ProgressHUD.showSuccess("Correct!")
            score += 1
        }else{
            ProgressHUD.showError("Wrong")
        }
        updateUI()
    }
    
    func startOver() {
        questionNumber = 0
        score = 0
        updateUI()
        nextQuestion()
    }
    
}
