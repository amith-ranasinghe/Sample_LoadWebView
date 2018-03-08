//
//  ViewController.swift
//  DLP_TestEmbed
//
//  Created by Eight25media on 3/8/18.
//  Copyright © 2018 Amith Ranasinghe. All rights reserved.
//

import UIKit
import WebKit
import SafariServices

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
//     var webView: WKWebView!
//    
//    
//    override func loadView() {
//        let webConfiguration = WKWebViewConfiguration()
//        webView = WKWebView(frame: CGRect.zero, configuration: webConfiguration)
//        webView.UIDelegate = self
//        view = webView
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadWebPaage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clicked(sender: AnyObject) {
        if let url = NSURL(string: "http://appkatha.com/PresentationforSpeakerapp/PresentationforSpeakerapp%20(Web)/") {
            let vc = SFSafariViewController(URL: url, entersReaderIfAvailable: false)
            presentViewController(vc, animated: true, completion: nil)
            
        }
    }
    
    func loadWebPaage() {
        
        let newsUrl = "http://appkatha.com/PresentationforSpeakerapp/PresentationforSpeakerapp (Web)/"
        print(newsUrl)
        //This is because if sinhala words are in the url it will not consider as a valid url if we
        //pass the string into URLRequest
        let original = newsUrl
//        let encoded = original.stringByAddingPercentEscapesUsingEncoding(NSUTF8StringEncoding)
        let encoded = original.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet())
        
        print(encoded)
        let url = NSURL(string: encoded!)
            let urlRequest = NSURLRequest(URL: url!)
            webView.loadRequest(urlRequest)
        
        
        
    }

}

extension ViewController: UIWebViewDelegate {

    
}

