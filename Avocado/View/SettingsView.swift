//
//  SettingsView.swift
//  Avocado
//
//  Created by Alcubierre Holdings Inc. on 2021-12-14.
//

import SwiftUI

struct SettingsView: View {
    //Mark: - Properties
    
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            //Mark: - Header
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                .foregroundColor(Color("ColorGreenAdaptive"))
            }
            .padding()
            
            //Mark: - Form
            Form {
                //Mark: - Section #1
                Section(header: Text("General Settings")){
                    Toggle(isOn: $enableNotification){
                        Text("Enable notification")
                    }
                    
                    Toggle(isOn: $backgroundRefresh){
                        Text("Background refresh")
                    }
                }
                
                //Mark: - Section #2
                Section(header: Text("Application")){
                    if enableNotification {
                        HStack {
                            Text("Product").foregroundColor(Color.gray)
                            Spacer()
                            Text("Avocado Recepies")
                        }
                        HStack {
                            Text("Compatibility").foregroundColor(Color.gray)
                            Spacer()
                            Text("iPhione & iPad")
                        }
                        HStack {
                            Text("Developer").foregroundColor(Color.gray)
                            Spacer()
                            Text("Diego Alcubierre")
                        }
                        HStack {
                            Text("Designer").foregroundColor(Color.gray)
                            Spacer()
                            Text("Valentina Escobedo")
                        }
                        HStack {
                            Text("Website").foregroundColor(Color.gray)
                            Spacer()
                            Text("realmexicanrecipes.com")
                        }
                        HStack {
                            Text("Version").foregroundColor(Color.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack{
                            Text("Personal message").foregroundColor(Color.gray)
                            Text("You are awesome ;)")
                            
                        }
                    }
               
                }
            }
        }
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider { 
    static var previews: some View {
        SettingsView()
    }
}
