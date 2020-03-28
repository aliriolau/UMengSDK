//
//                            Open Your Mind!
//
//                  .-~~~~~~~~~-._       _.-~~~~~~~~~-.
//              __.'              ~.   .~              `.__
//            .'//                  \./                  \\`.
//          .'//                     |                     \\`.
//        .'// .-~"""""""~~~~-._     |     _,-~~~~"""""""~-. \\`.
//      .'//.-"                 `-.  |  .-'                 "-.\\`.
//    .'//______.============-..   \ | /   ..-============.______\\`.
//  .'______________________________\|/______________________________`.
//
//  ALUMService.swift
//  TestPodfile
//
//  Created by Alirio Lau on 2020/3/28.
//  Copyright © 2020 com.alirio.lau.www. All rights reserved.
//

import Foundation
import UMAnalytics
import UMCommon

class ALUMService {

  private var isOnline = false

  private func startAnalytics() {
    UMConfigure.initWithAppkey("appKey", channel: "")

    UMConfigure.setEncryptEnabled(true)

    UMConfigure.setLogEnabled(!isOnline)
  }

}
