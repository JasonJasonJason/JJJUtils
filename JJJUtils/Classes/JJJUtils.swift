//
//  JJJUtils.swift
//  Pods
//
//  Copyright © 2016 Jason Harris. All rights reserved.
//


import Foundation

public class JJJUtils {
    
    /// Create information-only UIAlertController with 'OK' button and no delegate set
    /// Example usage:
    /// ```
    /// let alertControler = JJJUtils.getBlankAlertController("title", message: "message")
    /// self.presentViewController(alertControler, animated: true, completion: nil)
    /// ```
    public static func getBlankAlertController(title:String, message:String) -> UIAlertController {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        let button = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alert.addAction(button)
        return alert
        
    }
    
    
    /// Sort a collection in a random format, effectively shuffling them.
    /// Example usage:
    /// ```
    /// let nums = [1, 2, 3]
    /// let shuffledNums = JJJUtils.randomSort(nums)
    /// // [2, 1, 3]
    /// ```
    public static func randomSort<T>(collection: [T]) -> [T] {
        
        return collection.sort() {_, _ in arc4random() % 2 == 0}
        
    }
    
    
    /// Load a UIImage from a test class. This is tricky because `UIImage(named: "img.png")` under specific bundle configurations.
    /// Example usage:
    /// ```
    /// let image = JJJUtils.loadImageForTest(self.dynamicType, imageName: "img.png")
    /// ```
    public static func loadImageForTest(testClass: AnyClass, imageName: String) -> UIImage? {
        
        return UIImage(
            named: imageName,
            inBundle: NSBundle(forClass: testClass),
            compatibleWithTraitCollection: nil
        )
        
    }
    
    
}