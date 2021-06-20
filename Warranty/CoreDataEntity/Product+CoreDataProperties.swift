//
//  Product+CoreDataProperties.swift
//  Warranty
//
//  Created by William Scholder on 20.06.21.
//
//

import Foundation
import CoreData


extension Product {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Product> {
        return NSFetchRequest<Product>(entityName: "Product")
    }

    @NSManaged public var productName: String?
    @NSManaged public var shopName: String?
    @NSManaged public var endDate: Date?
    @NSManaged public var warrantyImage: Data?
    @NSManaged public var productImage: Data?
    
    public var wrappedProductName: String {
        productName ?? "Undefined"
    }
    public var wrappedShopName: String {
        shopName ?? "Undefined"
    }
    public var wrappedEndDate : Date {
        endDate ?? Date()
    }
    

}

extension Product : Identifiable {

}
