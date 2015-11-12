
import Foundation
import CoreData


class Restaurant:NSManagedObject{
    
    @NSManaged var name:String!
    @NSManaged var type:String!
    @NSManaged var location:String!
    @NSManaged var image:NSData!
    @NSManaged var isVisited:NSNumber!
    
//    init(name:String,type:String,location:String,image:String,isVisited:Bool){
//        self.name = name
//        self.type = type
//        self.location = location
//        self.image = image
//        self.isVisited = isVisited
//    }
}