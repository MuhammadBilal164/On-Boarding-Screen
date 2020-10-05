//
//  OnBoardingViewController.swift
//  UITaskOnBoarding
//
//  Created by Umer Farooq on 02/10/2020.
//

import UIKit

class OnBoardingViewController: UIViewController {
    
    
    //MARK: - Outlets
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var getStartedBtn: UIButton!
    
    
    //MARK: - Variables
    var slides: [Slide] = [];
    var slidebtn: Slide?
    
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        viewSetup()
    }
    
    
    //MARK: - View Setup
    func viewSetup() {
        slides = createSlides()
        setupSlideScrollView(slides: slides)
        slides = createSlides()
        setupSlideScrollView(slides: slides)
        self.getStartedBtn.layer.cornerRadius = 25
    }
    
    
    //MARK: - Actions
    
    @IBAction func getStartedBtnTapped(_ sender: Any) {
        let vc = HomeViewController(nibName: "HomeViewController", bundle: nil)
        vc.modalPresentationStyle = .fullScreen
        self.dismiss(animated: true)
        present(vc, animated: true)
        
        
    }
    
    
    //Helper Method
    func createSlides() -> [Slide] {
        
        let slide1:Slide = Bundle.main.loadNibNamed("Slides", owner: self, options: nil)?.first as! Slide
        slide1.image.image = UIImage(named: "image1.jpg")
       
        let slide2:Slide = Bundle.main.loadNibNamed("Slides", owner: self, options: nil)?.first as! Slide
        slide2.image.image = UIImage(named: "image2.jpg")
        
        let slide3:Slide = Bundle.main.loadNibNamed("Slides", owner: self, options: nil)?.first as! Slide
        slide3.image.image = UIImage(named: "image3.jpg")
      
        return [slide1, slide2, slide3]
    }
    
    func setupSlideScrollView(slides : [Slide]) {
        
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        scrollView.contentSize = CGSize(width: view.frame.width * CGFloat(slides.count), height: view.frame.height)
        scrollView.isPagingEnabled = true
        
        for i in 0 ..< slides.count {
            slides[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height)
            scrollView.addSubview(slides[i])
        }
    }
}



