//
//  ContentView.swift
//  CustomTabBar
//
//  Created by  Mr.Ki on 04.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selected = 0
    
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                HStack {
                    
                    Button {
                        self.selected = 0
                    } label: {
                       // Image("globe")
                        Image(systemName: "house")
                            .font(.largeTitle)
                    }.foregroundColor(self.selected == 0 ? .black : .gray)
                    
                    Spacer(minLength: 12)
                    
                    Button {
                        self.selected = 1
                    } label: {
                       // Image("magazine")
                        Image(systemName: "mic")
                            .font(.largeTitle)
                    }.foregroundColor(self.selected == 1 ? .black : .gray)
                    
                    Spacer().frame(width: 120)

                    Button {
                        self.selected = 2
                    } label: {
                      //  Image("research")
                        Image(systemName: "mic")
                            .font(.largeTitle)
                    }.foregroundColor(self.selected == 2 ? .black : .gray)
                    
                    Spacer(minLength: 12)
                    
                    Button {
                        self.selected = 3
                    } label: {
                      //  Image("navigation")
                        Image(systemName: "list.triangle")
                            .font(.largeTitle)
                    }.foregroundColor(self.selected == 3 ? .black : .gray)
                    
                    
                }
                .padding()
                .padding(.horizontal, 10)
              .background(CurvedShape())
              
                
                Button {
                    self.selected = 4
                } label: {
                  //  Image("balloon")
                    Image(systemName: "ferry")
                        .font(.largeTitle)
                      //  .renderingMode(.original)
                        .foregroundColor(self.selected == 4 ? .indigo : .mint)
                   
                        .padding()
                }
                .background(Color.yellow)
                .clipShape(Circle())
                    .offset(y: -32)
                    .shadow(radius: 5)

                
            }
            
        }   .background(Color.mint)
            .edgesIgnoringSafeArea(.bottom)
            
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct CurvedShape: View {
    var body: some View {
        Path { path in
          
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 70))
            
            path.addArc(center: CGPoint(x: UIScreen.main.bounds.width / 2, y: 70), radius: 45, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
            path.addLine(to: CGPoint(x: 0, y: 70))
         
        
            
        }.fill(Color.white)
            .rotationEffect(.init(degrees: 180))
            .offset(x: 0, y: 2)
            
          //  .cornerRadius(15)
    }
}
