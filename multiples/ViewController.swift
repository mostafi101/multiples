//
//  ViewController.swift
//  multiples
//
//  Created by Mostafijur Rahaman on 6/4/16.
//  Copyright © 2016 Mostafijur Rahaman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Properties
    var addVal = 0
    var addSum = 0
    var counter = 0
    
    //Outlet
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var multipelTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var multipleLbl: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    
    @IBAction func onPlayBtnPressed(sender: UIButton!){
        
        if multipelTxt.text != nil && multipelTxt.text != ""{
            logo.hidden = true
            multipelTxt.hidden = true
            playBtn.hidden = true
            
            multipleLbl.hidden = false
            addBtn.hidden = false
            
            addVal = Int(multipelTxt.text!)!
            
            updateMultipleLbl()

        }
        
    }
    
    @IBAction func onAddBtnPressed(sender: UIButton!){
        if counter <= 5{
            addSum = sum()
            updateMultipleLbl()
            counter += 1
        }else{
            restart()
        }
    
    }
    
    func updateMultipleLbl(){
        multipleLbl.text = "\(addSum) + \(addVal) = \(sum())"
    }
    
    func sum() -> Int{
        return addSum + addVal
    }
    
    func restart(){
        counter = 0
        addSum = 0
        multipelTxt.text = ""
        logo.hidden = false
        multipelTxt.hidden = false
        playBtn.hidden = false
        
        multipleLbl.hidden = true
        addBtn.hidden = true
    }


}

