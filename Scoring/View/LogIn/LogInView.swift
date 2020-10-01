//
//  LogInView.swift
//
//  Created by PW486 on 2019/09/14.
//  Copyright © 2019 PW486. All rights reserved.
//

import Alamofire
import SwiftUI
import SwiftyJSON

struct LogInView: View {
  @EnvironmentObject private var globalState: GlobalState
  @Environment(\.presentationMode) private var presentation: Binding<PresentationMode>

  @State private var showModal = false

  var body: some View {
    VStack(alignment: .center, spacing: 20) {
      Divider()
        .background(Color("headline"))
      Text("H & F Scoring")
        .font(.custom("Poppins-SemiBold", size: 36))
        .foregroundColor(Color("headline"))
      Divider()
        .background(Color("headline"))
      Spacer()
//      Button(action: {}) {
//        Text("Sign in with Google")
//      }
      Spacer()
    }
    .padding(48)
    .sheet(isPresented: $showModal, content: {
      RegisterView().environmentObject(self.globalState)
    })
  }
}

struct LogInViewPreviews: PreviewProvider {
  static var previews: some View {
    LogInView().environmentObject(GlobalState())
  }
}
