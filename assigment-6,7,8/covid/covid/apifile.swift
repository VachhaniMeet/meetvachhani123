//
//  apifile.swift
//  covid
//
//  Created by meet on 21/10/23.
//  Copyright © 2023 meet. All rights reserved.
//

import Foundation

struct Newdata : Decodable {
    var statewise : [apimodel]?=[]
    
}

struct apimodel:Decodable
{
    let state : String?
    let statecode : String?
    let lastupdatetime : String?
    let active : String?
    let confirmed : String?
    let deaths : String?
    let recovered : String?
    
}
