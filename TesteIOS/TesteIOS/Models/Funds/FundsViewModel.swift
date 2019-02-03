//
//  FundsViewModel.swift
//  TesteIOS
//
//  Created by Sidney Silva on 03/02/19.
//  Copyright © 2019 Sakura Soft. All rights reserved.
//

struct Screen: Codable {
    let title: String?
    let fundName: String?
    let whatIs: String?
    let definition: String?
    let riskTitle: String?
    let risk: Int?
    let infoTitle: String?
    let moreInfo: MoreInfo?
    let info: [Info]?
    let downInfo: [Info]?
}

struct Info: Codable {
    let name: String?
    let data: String?
}

struct MoreInfo: Codable {
    let month: The12Months?
    let year: The12Months?
    let the12Months: The12Months?
    
    enum CodingKeys: String, CodingKey {
        case month, year
        case the12Months = "12months"
    }
}

struct The12Months: Codable {
    let fund: Double?
    let cdi: Double?
    
    enum CodingKeys: String, CodingKey {
        case fund
        case cdi = "CDI"
    }
}
