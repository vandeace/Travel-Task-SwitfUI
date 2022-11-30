//
//  SheetView.swift
//  TravelTaskWeek2
//
//  Created by Muhammad Jafar Ash Siddiq on 28/11/22.
//

import SwiftUI

struct SheetView: View {
    
    @State private var showWebView: Bool = false
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            HStack{
                Text("Pink Beach, Flores")
                    .fontWeight(.bold)
                    .font(.system(size: 24,design: .rounded))
                
                Spacer()
                
                Label {
                    Text("4.8")
                        .bold()
                        .font(.title3)
                        
                } icon: {
                    Image(systemName: "star.fill")
                        .font(.title3)
                        .foregroundColor(.yellow)
                }
                
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15){
                    CategoryItemView(
                        title: "Walk",
                        icon: "figure.walk.motion",
                        color: .green,
                        bgColor: Color("CustomWhite"))
                    CategoryItemView(
                        title: "Food",
                        icon: "fork.knife.circle.fill",
                        color: .blue,
                        bgColor: Color("CustomWhite"))
                    CategoryItemView(
                        title: "Stays",
                        icon: "house.fill",
                        color: .blue,
                        bgColor: Color("CustomWhite"))
                    CategoryItemView(
                        title: "Ride",
                        icon: "sailboat.fill",
                        color: .purple,
                        bgColor: Color("CustomWhite"))
                }
            }//ScrollView
            .padding(.vertical)
            
            Text("About Destionation")
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                .fontWeight(.semibold)
                .font(.system(.title3, design: .rounded))
            
            Text("Pink Beack, or Pantai Merah, as it aptly named,\nis one of seven pink beaches on the planet. \nThis was awesome")
                .font(.system(size: 16,design: .rounded))
                .fontWeight(.medium)
                .lineSpacing(2)
            
            HStack() {
                Text("$81,39")
                    .font(.title2)
                    .foregroundColor(.blue)
                    .bold()
                
                Spacer()
                
                Button {
                    showWebView = true
                } label: {
                    Label {
                        Text("Join Tour")
                    } icon: {
                        Image(systemName: "bag")
                    }

                }
                .foregroundColor(.white)
//                .padding(EdgeInsets(top: 15, leading: 25, bottom: 15, trailing: 25))
                .padding()
                .background{
                    LinearGradient(colors: [.purple,.blue], startPoint: .leading, endPoint: .trailing)
                }
                .cornerRadius(40)
                .fullScreenCover(isPresented: $showWebView) {
                    WebView(url: URL(string: "https://hidayatabisena.com")!)
                }

            }
            .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
        } //VSTACK
        .padding()
        
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}

struct CategoryItemView: View {
    var title: String
    var icon: String
    var color: Color
    var bgColor: Color
    
    var body: some View{
        HStack(spacing: 20){
            VStack(alignment: .center, spacing: 8) {
                Image(systemName: icon)
                    .symbolRenderingMode(.multicolor)
                    .font(.system(size: 24))
                    .foregroundColor(color)
                
                Text(title)
                    .fontWeight(.medium)
                    
                    
            }
        }//:HSTACK
        .frame(width: 50, height: 70)
        .padding()
        .background(bgColor)
        .cornerRadius(10)
        
    }
}
