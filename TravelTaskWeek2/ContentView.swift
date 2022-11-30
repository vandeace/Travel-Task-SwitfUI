//
//  ContentView.swift
//  TravelTaskWeek2
//
//  Created by Muhammad Jafar Ash Siddiq on 24/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showAlert : Bool = false
    @State private var isShowingSheet : Bool = false
    
    var body: some View {
        ZStack {
            Image("go-to-beach")
                .resizable()
                .ignoresSafeArea()
                .overlay{
                    Color(.black)
                        .ignoresSafeArea()
                        .opacity(0.4)
                }
            VStack {
                HStack {
                    Button{
                        showAlert = true
                    } label: {
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .font(.system(size: 25))
                            .foregroundColor(.white)
                            .padding(15)
                            
                    }
                    .background{
                            Circle()
                                .opacity(0.2)
                    }
                    .alert(Text("Not yet available"), isPresented: $showAlert) {
                        Button {
                            
                        } label: {
                            Text("OK")
                        }
                        

                    } message: {
                        Text("Currently on active development")
                    }
                    
                    
                    Spacer()
                    
                    Text("Travel")
                        .foregroundColor(.white)
                        .font(.title)
                    
                    Spacer()
                    Image(systemName: "cart.badge.plus")
                        .renderingMode(.original)
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        .padding(15)
                        .background{
                            Circle()
                                .opacity(0.2)
                        }
                        .onTapGesture {
                            isShowingSheet.toggle()
                        }
                        .sheet(isPresented: $isShowingSheet) {
                            SheetView()
                                .presentationDetents([.medium, .large])
                        }
                    
                }
                VStack(alignment: .leading) {
                    Text("Start your Adventure and Go Travel Now")
                        .foregroundColor(.white)
                        .font(.system(size: 45,design: .rounded))
                        .bold()
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 70))
                    Text("Discover local destinations beauty with Bluesky and travel with pride")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                    Spacer()
                    
                }
                
            }// Vstack
            .padding(30)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
