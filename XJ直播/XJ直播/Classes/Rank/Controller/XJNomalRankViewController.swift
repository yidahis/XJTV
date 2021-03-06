//
//  XJNomalRankViewController.swift
//  XJ直播
//
//  Created by Paul on 2017/1/11.
//  Copyright © 2017年 Paul. All rights reserved.
//

import UIKit

class XJNomalRankViewController: XJSubbankViewController {

  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        
    }

}

extension XJNomalRankViewController {
    
    fileprivate func setupUI() {
        let rect = CGRect(x: 0, y: 0, width: kScreenW, height: kScreenH - kStatusBarH - kNavigationBarH - kTabBarH)
        
        let titles = ["日榜", "周榜", "月榜", "总榜"]
        
        let style = XJTitleStyle()
        style.isShowBottomLine = false
        style.isScrollEnable = false
        style.titleHeight = 35
        
        var childVCs = [XJNomalDetailViewController]()
        for i in 0..<titles.count {
            let rankType = XJRankType(typeName: typeName, typeNum: i + 1)
            let vc = XJNomalDetailViewController(rankType: rankType)
//            vc.view.backgroundColor = UIColor.randomColor()
            childVCs.append(vc)
            
        }
        
        let scrollPageView = XJScrollPageView(frame: rect, titles: titles, style: style, childVcs: childVCs, parentVc: self)
        
        view.addSubview(scrollPageView)
        

    }
    
}
