//
//  SecondViewController.swift
//  Lea's App
//
//  Created by Zachary Ellis on 2/8/21.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var loveLetterLabel: UILabel!
    
    var selectedLoveLetter = String()
    
    @IBOutlet weak var loveLetterTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loveLetterLabel.text = selectedLoveLetter
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        switch selectedLoveLetter {
        case "Are Feeling Happy":
            loveLetterLabel.text = "Yay! You're Happy"
            loveLetterTextView.text = "Lea, I'm glad you are happy! I hope this positivity in you stays high (hehe 420 joke) and I wish I was there to see you happy. Send a me a picture of you and your contagious smile if you want to put one on my face too! I'm always down to cook for you, take you to get mexican, dance, or smoke joint if that'd make you even happier in the moment! Stay Sexy Lea"
        case "Need Workout Motivation":
            loveLetterLabel.text = "Need Motivation to Work Out?"
            loveLetterTextView.text = "Lea, it happens to the best of us. Remember this: The Best Project You Can Work On Is Yourself! You'll feel so much better afterwards. Go to HotWorkx, dance, go for a walk, or whatever it takes to get your heart rate up and break a sweat. You're amazing and beautiful the way you are, and after you get this workout done... DAMN! You're gonna look great and feel great too! Stay Happy Lea"
        case "Want to Feel Special":
            loveLetterLabel.text = "Lea,"
            loveLetterTextView.text = "You are a unique, strong, and passionate person. In you contains a special energy that can change the way you feel and impact the way others around you feel. Tap into that energy, take a deep breath, and smile, because you can make your day or someone else's day go from bad to good; or good to great! Stay Peaceful Lea, you are special!"
        case "Need a Study Break":
            loveLetterLabel.text = "Lea,"
            loveLetterTextView.text = "I know you are working hard to achieve your goals! And I want to be there to help you crush them. If you just need a reminder to breathe, eat a snack, take a walk, or stretch, do just that continue to work hard. It's gonna pay off big time one day! Or if this is a bigger study break hit a friend or me up. I'll take to you to Gloss, Mexican, to smoke, fuck, or whatever it is that will make you feel great. Your intelligence is SO sexy, Lea."
        default:
            loveLetterTextView.text = "Hey Lea, if you see this, try again by scrolling through the options first, then come back and try this one. You are amazing"
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}



