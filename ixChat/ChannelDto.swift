//
//  ChannelDto.swift
//  ixChat
//
//  Created by Miki von Ketelhodt on 2017/06/20.
//  Copyright © 2017 RBG Applications. All rights reserved.
//

import Foundation

class ChannelDto {
    var id: String?
    var name: String?
    
    init (id: String, name: String) {
        self.id = id
        self.name = name
    }
}
