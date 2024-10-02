//
//  ViewController.swift
//  image-recognizer-core-ml
//
//  Created by Selim on 2.10.2024.
//

import UIKit
import CoreML
import Vision

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
   
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var guessLabel: UILabel!
    
    var selectedImage = CIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        
        let picker = UIImagePickerController()
                picker.delegate = self
                picker.sourceType = .photoLibrary
                present(picker, animated: true, completion: nil)
    }
    
    func recognizeImage(image:CIImage){
        
        //Request 
        if let model = try? VNCoreMLModel(for: MobileNetV2().model) {
             
            let request = VNCoreMLRequest(model: model) { vnrequest, error in
                if let results = vnrequest.results as? [VNClassificationObservation]
                {
                    if results.count > 0 {
                        let topResult = results.first
                        
                        DispatchQueue.main.async {
                            
                            let confidenceLevel = (topResult?.confidence ?? 0) * 100
                            
                            let rounded = Int(confidenceLevel * 100) / 100
                            
                            self.guessLabel.text = "\(rounded)% it's \(topResult?.identifier)"
                        }
                    }
                }
            }
            let handler = VNImageRequestHandler(ciImage: image)
            //for high priority
            DispatchQueue.global(qos: .userInteractive).async {
                do {
                    try handler.perform([request])
                }
                catch{
                    print("\(error.localizedDescription)")
                }
            }
            
        }
        
        }
    
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        
        imageView.image = info[.originalImage] as? UIImage
               self.dismiss(animated: true, completion: nil)
               
               if let ciImage = CIImage(image: imageView.image!) {
                   selectedImage = ciImage
               }
               
               recognizeImage(image: selectedImage)
        
    }
    
    
 
    }
    
    









