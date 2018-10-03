//
//  ImageStore.swift
//  MyAssets
//
//  Created by Inga Klassy on 10/3/18.
//  Copyright © 2018 Inga Klassy. All rights reserved.
//

import UIKit

class ImageStore {
    let cache = NSCache<AnyObject, AnyObject>()
    
    func setImage(image: UIImage, forKey key: String) {
        cache.setObject(image, forKey: key as AnyObject)
    }
    
    func imageForKey(key: String) -> UIImage? {
        return cache.object(forKey: key as AnyObject) as? UIImage
    }
    
    func deleteImageForKey(key: String) {
        cache.removeObject(forKey: key as AnyObject)
    }
}
