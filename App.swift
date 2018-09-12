//
//  App.swift
//  PatientEscort
//
//  Created by 이성근 on 2017. 7. 25..
//  Copyright ⓒ 2017년 이성근. All rights reserved.
//

import Foundation
import UIKit
import Firebase

/// 가장 많이 쓰는 앱의 공통
struct App {
    
    /// 번들 아이디
    static let bundleID = Bundle.main.bundleIdentifier!
    /// 버전
    static let version = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
    /// 빌드버전
    static let build = Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as! String
    /// 휴대폰 SID
    static let deviceSID = UIDevice.current.identifierForVendor!.uuidString
    /// 휴대폰 디바이스 아이디
    static let deviceRegID = Messaging.messaging().fcmToken
    /// 휴대폰 타입
    static let deviceType: String = "IOS"
    /// 로그 출력 여부
    static let isPrintLog: Bool = false
    /// 사이즈
    struct Size {
        
        /// 현재 폰의 스크린 width
        static let screenWidth = UIScreen.main.bounds.width
        /// 현재 폰의 스크린 height
        static let screenHeight = UIScreen.main.bounds.height
        /// status bar height
        static let statusBarHeight = UIApplication.shared.statusBarFrame.height
        /// status bar를 제외한 frame
        static let screenFrame = CGRect(x: 0, y: Size.statusBarHeight, width: App.Size.screenWidth, height: App.Size.screenHeight - Size.statusBarHeight)
        /**
         *  디자인 사이즈
         */
        static let designScreenWidth: CGFloat = 320
        static let designScreenHeight: CGFloat = 512
        
        static let designScreenWidthForAndroid: CGFloat = 384
        static let designScreenHeightForAndroid: CGFloat = 512
    }
}
