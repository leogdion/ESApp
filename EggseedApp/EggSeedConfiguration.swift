//
//  EggSeedConfiguration.swift
//  EggseedApp
//
//  Created by Leo Dion on 3/29/21.
//

import Foundation
import Options

public enum ContinuousIntegrationSystem: Int {
  case bitrise = 1
  case travisci = 2
  case github = 4
  case circleci = 8
}

//
//public enum ContinuousIntegrationSystem: Int, CaseIterable {
//  case bitrise = 1
//  case travisci = 2
//  case github = 4
//  case circleci = 8
//}
//
//public struct ContinuousIntegration: OptionSet {
//  public let rawValue: ContinuousIntegrationSystem.RawValue
//
//  public typealias RawValue = ContinuousIntegrationSystem.RawValue
//
//  public init(rawValue: RawValue) {
//    self.rawValue = rawValue
//  }
//
//  public static let bitrise = Self(rawValue: ContinuousIntegrationSystem.bitrise.rawValue)
//  public static let travisci = Self(rawValue: ContinuousIntegrationSystem.travisci.rawValue)
//  public static let github = Self(rawValue: ContinuousIntegrationSystem.github.rawValue)
//  public static let circleci = Self(rawValue: ContinuousIntegrationSystem.circleci.rawValue)
//  public static let none = Self()
//  public static let all = Self(ContinuousIntegrationSystem.allCases.map { Self(rawValue: $0.rawValue) })
//}

public enum License: String {
  case agpl3_0 = "agpl-3.0"
  case apache2_0 = "apache-2.0"
  case bsd2clause = "bsd-2-clause"
  case bsd3clause = "bsd-3-clause"
  case cc01_0 = "cc0-1.0"
  case epl2_0 = "epl-2.0"
  case gpl2_0 = "gpl-2.0"
  case gpl3_0 = "gpl-3.0"
  case lgpl2_1 = "lgpl-2.1"
  case lgpl3_0 = "lgpl-3.0"
  case mit
  case mpl2_0 = "mpl-2.0"
  case unlicense
}

struct EggSeedConfiguration {
  var name : String
  var license : License
  var continuousIntegrations : EnumSet<ContinuousIntegrationSystem>
}
