//
//  ViewController.swift
//  ImageFilter
//
//  Created by sanket on 2021-06-08.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var Img: UIImageView!
    
    
    //Blurslider
    @IBOutlet weak var lblSliderValue: UILabel!
    
    @IBOutlet weak var blurSlider: UISlider!
    
    //sepiatoneslider
    
    @IBOutlet weak var sepiaToneSlider: UISlider!
    
    @IBOutlet weak var sepiaToneLabel: UILabel!
    
    
    
    var isFiltered = false
    var defaultImage:UIImage?

 
    
override func viewDidLoad() {
                super.viewDidLoad()
                // Do any additional setup after loading the view.
   

    
}
    
    
    //
 
    

    //reset function
    @IBAction func btnReset(_ sender: Any) {
        if (isFiltered == true){
            Img.image = defaultImage
        }
        
    }
    
    
    
    
    @IBAction func sliderValueChange(_ sender: UISlider) {
        blurSlider.maximumValue = 100
        blurSlider.minimumValue = 0
        let currentValue = Int((sender.value).rounded())
        lblSliderValue.text = String(currentValue)
        
        if(isFiltered == false){
            defaultImage = Img.image!
        }
       let originalImage = Img.image!
                       
       // imgload()
        
        let filterToApply = CIFilter(name: "CIBoxBlur")
                       
        filterToApply!.setValue(CIImage(image: originalImage),
                                                 forKey: kCIInputImageKey)
        
        filterToApply!.setValue(currentValue, forKey: kCIInputRadiusKey)
                       
                       let context = CIContext(options: nil)
                       
                       let outputImg = filterToApply!.outputImage
                       let cgImg = context.createCGImage(outputImg!, from: outputImg!.extent)
                       let processedImg = UIImage(cgImage: cgImg!)
                       Img.image = processedImg
        
        
        isFiltered = true
    }
    
    
    //2. color invertfilter
    
    @IBAction func btnInvert(_ sender: UIButton) {
        
        if(isFiltered == false){
            defaultImage = Img.image!
        }
        let originalImage = Img.image!
                       
                       let filterToApply = CIFilter(name: "CIColorInvert")
                
     
        filterToApply!.setValue(CIImage(image: originalImage),
                                               forKey: kCIInputImageKey)
                       
                       
                       
                       let context = CIContext(options: nil)
                       
                       let outputImg = filterToApply!.outputImage
                       let cgImg = context.createCGImage(outputImg!, from: outputImg!.extent)
                       let processedImg = UIImage(cgImage: cgImg!)
                       Img.image = processedImg
        
        
        isFiltered = true
}
    
    // 3. sepia filter
    
    
    @IBAction func sepiaToneSlider(_ sender: UISlider) {
        sepiaToneSlider.maximumValue = 10
        sepiaToneSlider.minimumValue = 0
        let currentValue = Int((sender.value).rounded())
        sepiaToneLabel.text = String(currentValue)
        if(isFiltered == false){
            defaultImage = Img.image!
        }
        
        
       let originalImage = Img.image!
                       
                       let filterToApply = CIFilter(name: "CISepiaTone")
                       
                       filterToApply!.setValue(CIImage(image: originalImage),
                                               forKey: kCIInputImageKey)
                       
                       filterToApply!.setValue(currentValue, forKey: kCIInputIntensityKey)
                       
                       let context = CIContext(options: nil)
                       
                       let outputImg = filterToApply!.outputImage
                       let cgImg = context.createCGImage(outputImg!, from: outputImg!.extent)
                       let processedImg = UIImage(cgImage: cgImg!)
                       Img.image = processedImg
        
        
        isFiltered = true    }
    
    
    
    
    @IBAction func btnThermal(_ sender: UIButton) {
        
        if(isFiltered == false){
            defaultImage = Img.image!
        }
       let originalImage = Img.image!
                       
                       let filterToApply = CIFilter(name: "CIThermal")
                
     
        filterToApply!.setValue(CIImage(image: originalImage),
                                               forKey: kCIInputImageKey)
                       
                       
                       
                       let context = CIContext(options: nil)
                       
                       let outputImg = filterToApply!.outputImage
                       let cgImg = context.createCGImage(outputImg!, from: outputImg!.extent)
                       let processedImg = UIImage(cgImage: cgImg!)
                       Img.image = processedImg
        
        
        isFiltered = true
        
        
    }
    
    
    @IBAction func comicEffect(_ sender: Any) {
        
        if(isFiltered == false){
            defaultImage = Img.image!
        }
        let originalImage = Img.image!
                       
                       let filterToApply = CIFilter(name: "CIComicEffect")
                
     
        filterToApply!.setValue(CIImage(image: originalImage),
                                               forKey: kCIInputImageKey)
                       
                       
                       
                       let context = CIContext(options: nil)
                       
                       let outputImg = filterToApply!.outputImage
                       let cgImg = context.createCGImage(outputImg!, from: outputImg!.extent)
                       let processedImg = UIImage(cgImage: cgImg!)
                       Img.image = processedImg
        
        
        isFiltered = true
        
    }
    
    
    @IBAction func xray(_ sender: UIButton) {
        if(isFiltered == false){
            defaultImage = Img.image!
        }
        let originalImage = Img.image!
                       
                       let filterToApply = CIFilter(name: "CIXRay")
                
     
        filterToApply!.setValue(CIImage(image: originalImage),
                                               forKey: kCIInputImageKey)
                       
                       
                       
                       let context = CIContext(options: nil)
                       
                       let outputImg = filterToApply!.outputImage
                       let cgImg = context.createCGImage(outputImg!, from: outputImg!.extent)
                       let processedImg = UIImage(cgImage: cgImg!)
                       Img.image = processedImg
        
        
        isFiltered = true
    }
    
    
}
