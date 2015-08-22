//
//  StorageUpdate.swift
//  DTModelStorageTests
//
//  Created by Denys Telezhkin on 06.07.15.
//  Copyright (c) 2015 Denys Telezhkin. All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import Foundation

/// Object representing update in storage.
public struct StorageUpdate : Equatable
{
    public var deletedSectionIndexes = NSMutableIndexSet()
    public var insertedSectionIndexes = NSMutableIndexSet()
    public var updatedSectionIndexes = NSMutableIndexSet()
    
    public var deletedRowIndexPaths = [NSIndexPath]()
    public var insertedRowIndexPaths = [NSIndexPath]()
    public var updatedRowIndexPaths = [NSIndexPath]()
    
    public init(){}
}

public func ==(left : StorageUpdate, right: StorageUpdate) -> Bool
{
    if !left.deletedSectionIndexes.isEqualToIndexSet(right.deletedSectionIndexes) { return false }
    if !left.insertedSectionIndexes.isEqualToIndexSet(right.insertedSectionIndexes) { return false }
    if !left.updatedSectionIndexes.isEqualToIndexSet(right.updatedSectionIndexes) { return false }
    if !(left.deletedRowIndexPaths == right.deletedRowIndexPaths) { return false }
    if !(left.insertedRowIndexPaths == right.insertedRowIndexPaths) { return false }
    if !(left.updatedRowIndexPaths == right.updatedRowIndexPaths) { return false }
    return true
}

extension StorageUpdate : CustomStringConvertible
{
    public var description : String {
        return "Deleted section indexes: \(deletedSectionIndexes)\n" +
            "Inserted section indexes : \(insertedSectionIndexes)\n" +
            "Updated section indexes : \(updatedSectionIndexes)\n" +
            "Deleted row indexPaths: \(deletedRowIndexPaths)\n" +
            "Inserted row indexPaths: \(insertedRowIndexPaths)\n" +
            "Updated row indexPaths: \(updatedRowIndexPaths)\n"
    }
}