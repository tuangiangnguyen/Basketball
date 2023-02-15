//
//  ViewController.swift
//  PointBasketball
//
//  Created by Nguyễn Giang on 06/02/2023.
//

import UIKit

class ViewController: UIViewController {
    
    var mins: Int = 15
    var seconds: Int = 0
    var timerRunning = false
    var countPointTeamA = 0
    var countPointTeamB = 0
    var teamA = ""
    var teamB = ""
    
    @IBOutlet weak var pointTeamALabel: UILabel!
    @IBOutlet weak var pointTeamBLabel: UILabel!
    @IBOutlet weak var countTimeLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var onePointButtonTeamA: UIButton!
    @IBOutlet weak var twoPointButtonTeamA: UIButton!
    @IBOutlet weak var threePointButtonTeamA: UIButton!
    @IBOutlet weak var onePointButtonTeamB: UIButton!
    @IBOutlet weak var twoPointButtonTeamB: UIButton!
    @IBOutlet weak var threePointButtonTeamB: UIButton!
    @IBOutlet weak var nameTeamALabel: UILabel!
    @IBOutlet weak var nameTeamBLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()
        updateLabel()
    }
    
    @IBAction func tapStartButton(_ sender: Any) {
        if (timerRunning) {
            timerRunning = false
            startButton.setTitle("Start", for: .normal)
        } else {
            timerRunning = true
            startButton.setTitle("Stop", for: .normal)
        }
    }
    
    @IBAction func tapOnePointTeamA(_ sender: Any) {
        countPointTeamA = countPointTeamA + 1
        pointTeamALabel.text = "\(countPointTeamA)"
    }
    
    @IBAction func tapTwoPointTeamA(_ sender: Any) {
        countPointTeamA = countPointTeamA + 2
        pointTeamALabel.text = "\(countPointTeamA)"
    }
    
    @IBAction func tapThreePointTeamA(_ sender: Any) {
        countPointTeamA = countPointTeamA + 3
        pointTeamALabel.text = "\(countPointTeamA)"
        
    }
    
    @IBAction func tapOnePointTeamB(_ sender: Any) {
        countPointTeamB = countPointTeamB + 1
        pointTeamBLabel.text = "\(countPointTeamB)"
    }
    
    @IBAction func tapTwoPointTeamB(_ sender: Any) {
        countPointTeamB = countPointTeamB + 2
        pointTeamBLabel.text = "\(countPointTeamB)"
    }
    
    @IBAction func tapThreePointTeamB(_ sender: Any) {
        countPointTeamB = countPointTeamB + 3
        pointTeamBLabel.text = "\(countPointTeamB)"
    }
    
    @IBAction func tapResetButton(_ sender: Any) {
        timerRunning = false
        mins = 15
        seconds = 0
        countTimeLabel.text = "\(mins):\(seconds)"
    }
    
    private func startTimer() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { [self] _ in
            if self.seconds > 0 && timerRunning {
                seconds = seconds - 1
            }
            else if self.mins > 0 && self.seconds == 0 && timerRunning {
                mins = mins - 1
                seconds = 59
            }
            self.updateLabel()
        })
    }
    
    private func updateLabel() {
        countTimeLabel.text = "\(mins):\(seconds)"
        nameTeamALabel.text = "\(teamA)"
        nameTeamBLabel.text = "\(teamB)"
    }
    
}

