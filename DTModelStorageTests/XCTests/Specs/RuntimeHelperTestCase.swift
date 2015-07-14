//
//  RuntimeHelperTestCase.swift
//  DTModelStorageTests
//
//  Created by Denys Telezhkin on 15.07.15.
//  Copyright (c) 2015 Denys Telezhkin. All rights reserved.
//

import UIKit
import XCTest
import DTModelStorage
import Nimble

class SwiftCell:UITableViewCell{}

class RuntimeHelperTestCase: XCTestCase {

    func testSummaryOfObjectiveCClasses()
    {
        let mirror = reflect(UITableViewCell)
        expect(RuntimeHelper.classNameFromReflection(mirror)) == "UITableViewCell"
        expect(RuntimeHelper.classNameFromReflectionSummary(mirror.summary)) == "UITableViewCell"
    }
    
    func testSummaryOfSwiftCells()
    {
        let mirror = reflect(SwiftCell)
        expect(RuntimeHelper.classNameFromReflection(mirror)) == "SwiftCell"
        expect(RuntimeHelper.classNameFromReflectionSummary(mirror.summary)) == "SwiftCell"
    }

}
