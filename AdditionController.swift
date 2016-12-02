import UIKit

class AdditionController: UIViewController {

    var userInput = ""
    var correctAnswer = 0
    var answer = ""
    var countCorrect = 0
    var questionNumber = 1
    
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
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("addition")
        number1.text = "add"
        
        let a = Int(arc4random_uniform(10))
        let b = Int(arc4random_uniform(10))
        number1.text = "\(a)"
        number2.text = "\(b)"
        correctAnswer = a + b
        answer = String(correctAnswer)
        
        self.navigationItem.hidesBackButton = true
        let backButton = UIBarButtonItem(title:"Back", style: UIBarButtonItemStyle.plain,
                                         target:self, action: #selector(AdditionController.back(sender:)))
        self.navigationItem.leftBarButtonItem = backButton
    

        // Do any additional setup after loading the view.
    }

    
    func back(sender: UIBarButtonItem) {
        
        let backAlert = UIAlertController(title:"Alert!",message:"Are you sure you want to exit?",
                                          preferredStyle: UIAlertControllerStyle.alert)
        
        backAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: {(action: UIAlertAction!) in self.navigationController?.popToRootViewController(animated: true)
        }))
        
        backAlert.addAction(UIAlertAction(title: "Cancle", style: .cancel, handler: { (action:
            UIAlertAction!) in print("handle cancle logic")
        }))
        
        present(backAlert,animated:true,completion: nil)
            
        
    }
    
  
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        print("addition1")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func changeQuestion(){
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
            questionNumber += 1
            changeQuestion()
        }
        else if (questionNumber == 10){
        
            let backAlert = UIAlertController(title:"Total!", message:"Score = \(countCorrect)",
                                              preferredStyle: UIAlertControllerStyle.alert)
            
            backAlert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: { (action:
                UIAlertAction!) in self.navigationController?.popToRootViewController(animated: true)
            }))
            
            present(backAlert,animated:true,completion: nil)
            
            
        
        }
        
    }
        
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}
