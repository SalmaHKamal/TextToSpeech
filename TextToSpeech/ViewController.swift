//
//  ViewController.swift
//  TextToSpeech
//
//  Created by Salma Hassan on 9/13/19.
//  Copyright © 2019 salma. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

   @IBOutlet weak var textView: UITextView!
   override func viewDidLoad() {
      super.viewDidLoad()
   }

   
   @IBAction func onReadBtnPressed(_ sender: Any) {
      // Line 1. Create an instance of AVSpeechSynthesizer.
      let speechSynthesizer = AVSpeechSynthesizer()
      // Line 2. Create an instance of AVSpeechUtterance and pass in a String to be spoken.
      let speechUtterance: AVSpeechUtterance = AVSpeechUtterance(string: textView.text)
      //Line 3. Specify the speech utterance rate. 1 = speaking extremely the higher the values the slower speech patterns. The default rate, AVSpeechUtteranceDefaultSpeechRate is 0.5
//      speechUtterance.rate = AVSpeechUtteranceMaximumSpeechRate / 4.0
      // Line 4. Specify the voice. It is explicitly set to English here, but it will use the device default if not specified.
      speechUtterance.voice = AVSpeechSynthesisVoice(language: "en-US")
      // Line 5. Pass in the urrerance to the synthesizer to actually speak.
      speechSynthesizer.speak(speechUtterance)
   }
   
}

