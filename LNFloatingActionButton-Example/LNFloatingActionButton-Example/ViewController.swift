//
//  ViewController.swift
//  LNFloatingActionButton-Example
//
//  Created by Shuhei Kawaguchi on 2016/11/26.
//  Copyright © 2016年 Shuhei Kawaguchi. All rights reserved.
//

import UIKit
import LNFloatingActionButton

class ViewController: UIViewController {
    
    var cells: [LNFloatingActionButtonCell] = []
    var floatingActionButton: LNFloatingActionButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        let ellipseCell: LNFloatingActionButtonEllipseCell = {
            let cell = LNFloatingActionButtonEllipseCell()
            cell.ellipseSize = CGSize(width: 150, height: 30)
            cell.titleTextAlignment = .center
            cell.title = "test text"
            cell.image = UIImage(named: "like")
            return cell
        }()
        cells.append(ellipseCell)
        
        let ellipse2Cell: LNFloatingActionButtonEllipseCell = {
           let cell = LNFloatingActionButtonEllipseCell()
            cell.ellipseSize = CGSize(width: 150, height: 30)
            cell.titleTextAlignment = .center
            cell.title = "sample text"
            cell.image = UIImage(named: "home")
            return cell
        }()
        cells.append(ellipse2Cell)
        
        
        floatingActionButton = LNFloatingActionButton(x: view.frame.size.width - 100, y: view.frame.size.height - 100)
//        floatingActionButton.size = 56
        floatingActionButton.color = UIColor.white
//        floatingActionButton.touchingColor = UIColor.green
        floatingActionButton.shadowOffset = CGSize(width: 0.0, height: 2.0)
        floatingActionButton.shadowOpacity = 0.5
        floatingActionButton.shadowRadius = 2.0
        floatingActionButton.shadowPath = floatingActionButton.circlePath
        floatingActionButton.delegate = self
        floatingActionButton.dataSource = self
        floatingActionButton.closedImage = UIImage(named: "plus")
//        floatingActionButton.openedImage = UIImage(named: "like")
//        floatingActionButton.cellAnimationWithOpen = { btn in btn.customeAnimation() }
//        floatingActionButton.titleLabelPosition = .left
        floatingActionButton.cellHorizontalAlign = .right
//        floatingActionButton.cellAnimationWithOpen = { btn in btn.popEllipseCellAnimationWithOpen() }
        floatingActionButton.isBackgroundView = true
        view.addSubview(floatingActionButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


extension ViewController: LNFloatingActionButtonDelegate {
    func floatingActionButton(_ floatingActionButton: LNFloatingActionButton, didSelectItemAtIndex index: Int) {
        print(index)
    }
}

extension ViewController: LNFloatingActionButtonDataSource {
    func numberOfCells(_ floatingActionButton: LNFloatingActionButton) -> Int {
        return cells.count
    }
    
    func cellForIndex(_ index: Int) -> LNFloatingActionButtonCell {
        return cells[index]
    }
}

extension LNFloatingActionButton {
    func customeAnimation() {
        // original animation ...
    }
}
