//
//  PlaceAnnotation.swift
//  Earthshake
//
//  Created by Andrey on 2016-12-29.
//  Copyright © 2016 AP. All rights reserved.
//

import Foundation
import MapKit

class PlaceAnnotation : NSObject, MKAnnotation
{
    var title: String?
    var subtitle: String?
    var magnitude: NSNumber!
    var detailURLString = ""
    var coordinate = CLLocationCoordinate2D()
}
