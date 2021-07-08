//
//  ViewController.swift
//  goldsea
//
//  Created by au yeung kai kwan on 6/7/2021.
//


import UIKit
import WebKit
class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://goldsealand.com/a/app/index.html")
        let myRequest = URLRequest(url: myURL!)
        
        webView.load(myRequest)
    }}
