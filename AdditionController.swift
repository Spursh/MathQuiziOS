import UIKit

class AdditionController: UIViewController {

    var userInput = ""
    var correctAnswer = 0
    var answer = ""
    var countCorrect = 0
    var questionNumber = 1
    
    @IBOutlet weak var timer: UILabel!
    var cTimer = Timer()
    var timeLeft = Timer()
    var counter = 5
    
    @IBOutlet weak var quesNum: UITextField!
    @IBOutlet weak var number1: UILabel!
    @IBOutlet weak var number2: UILabel!
    @IBOutlet weak var solution: UITextField!
    
    @IBAction func one(_ sender: UIButton) {
        let buttonValue = "1"
        userInput = userInput + buttonValue
        solution.text = "\(userInput)"
        calculate()
    }
    @IBAction func two(_ sender: UIButton) {
        let buttonValue = "2"
        userInput = userInput + buttonValue
        solution.text = "\(userInput)"
        calculate()
    }
    @IBAction func three(_ sender: UIButton) {
        let buttonValue = "3"
        userInput = userInput + buttonValue
        solution.text = "\(userInput)"
        calculate()
    }
    
    @IBAction func four(_ sender: UIButton) {
        let buttonValue = "4"
        userInput = userInput + buttonValue
        solution.text = "\(userInput)"
        calculate()
    }
    
    @IBAction func five(_ sender: UIButton) {
        let buttonValue = "5"
        userInput = userInput + buttonValue
        solution.text = "\(userInput)"
        calculate()
    }
    
    @IBAction func six(_ sender: UIButton) {
        let buttonValue = "6"
        userInput = userInput + buttonValue
        solution.text = "\(userInput)"
        calculate()
    }
    
    
    @IBAction func seven(_ sender: UIButton) {
        let buttonValue = "7"
        userInput = userInput + buttonValue
        solution.text = "\(userInput)"
        calculate()
    }
    
    @IBAction func eight(_ sender: UIButton) {
        let buttonValue = "8"
        userInput = userInput + buttonValue
        solution.text = "\(userInput)"
        calculate()
    }
    
    @IBAction func nine(_ sender: UIButton) {
        let buttonValue = "9"
        userInput = userInput + buttonValue
        solution.text = "\(userInput)"
        calculate()
    }
    
    
    @IBAction func clear(_ sender: UIButton) {
        userInput = ""
        solution.text = "\(userInput)"
    }
    
    
    @IBAction func zero(_ sender: UIButton) {
        let buttonValue = "0"
        userInput = userInput + buttonValue
        solution.text = "\(userInput)"
        calculate()
    }
    
    @IBAction func enter(_ sender: UIButton) {
        checkQuestionNumber()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let a = Int(arc4random_uniform(10))
        let b = Int(arc4random_uniform(10))
        number1.text = "\(a)"
        number2.text = "\(b)"
        correctAnswer = a + b
        answer = String(correctAnswer)
        countDownTimer()
        quesNum.text = "Question \(questionNumber) of 10"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        print("addition1")
    }
    
    func changeQuestion(){
        quesNum.text = "Question \(questionNumber) of 10"
        userInput = ""
        solution.text = "\(userInput)"
        let a = Int(arc4random_uniform(10))
        let b = Int(arc4random_uniform(10))
        number1.text = "\(a)"
        number2.text = "\(b)"
        correctAnswer = a + b
        answer = String(correctAnswer)
    }
    
    func calculate(){
        if(answer == userInput){
            countCorrect += 1
            checkQuestionNumber()
        }
    }
    
    func checkQuestionNumber() {
        if(questionNumber < 10){
            cTimer.invalidate()
            timeLeft.invalidate()
            counter = 5
            questionNumber += 1
            changeQuestion()
            countDownTimer()
        }
        else if (questionNumber == 10){
        }
    }
    
    func countDownTimer(){
                timer.text = String(counter)
        timeLeft = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(AdditionController.updateCounter), userInfo: nil, repeats: true)
         cTimer = Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(AdditionController.checkQuestionNumber), userInfo: nil, repeats: true)
    }
    
    func updateCounter() {
        counter = counter - 1
        timer.text = String(counter)
        if (counter == 0){
            timeLeft.invalidate()
        }
    }
    
}
