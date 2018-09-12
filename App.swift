//
//  App.swift
//  PatientEscort
//
//  Created by �̼��� on 2017. 7. 25..
//  Copyright �� 2017�� �̼���. All rights reserved.
//

import Foundation
import UIKit
import Firebase

/// ���� ���� ���� ���� ����
struct App {
    
    /// ���� ���̵�
    static let bundleID = Bundle.main.bundleIdentifier!
    /// ����
    static let version = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
    /// �������
    static let build = Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as! String
    /// �޴��� SID
    static let deviceSID = UIDevice.current.identifierForVendor!.uuidString
    /// �޴��� ����̽� ���̵�
    static let deviceRegID = Messaging.messaging().fcmToken
    /// �޴��� Ÿ��
    static let deviceType: String = "IOS"
    /// �α� ��� ����
    static let isPrintLog: Bool = false
    /// ������
    struct Size {
        
        /// ���� ���� ��ũ�� width
        static let screenWidth = UIScreen.main.bounds.width
        /// ���� ���� ��ũ�� height
        static let screenHeight = UIScreen.main.bounds.height
        /// status bar height
        static let statusBarHeight = UIApplication.shared.statusBarFrame.height
        /// status bar�� ������ frame
        static let screenFrame = CGRect(x: 0, y: Size.statusBarHeight, width: App.Size.screenWidth, height: App.Size.screenHeight - Size.statusBarHeight)
        /**
         *  ������ ������
         */
        static let designScreenWidth: CGFloat = 320
        static let designScreenHeight: CGFloat = 512
        
        static let designScreenWidthForAndroid: CGFloat = 384
        static let designScreenHeightForAndroid: CGFloat = 512
    }
}
