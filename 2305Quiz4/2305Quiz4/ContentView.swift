//
//  ContentView.swift
//  2305Quiz4
//
//  Created by Harleen Jhamat on 2022-03-02.
//

import SwiftUI


struct ContentView: View {
    
    @EnvironmentObject var network: Network
    
    var body: some View {
        VStack {
            Text("Activities")
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
            
                .padding()
            
            HStack {
                ZStack {
                                    
                    Rectangle()
                        .fill(Color.black)
                        .frame(width: 300, height: 500)
                    
                    VStack {
                    
                        ForEach(network.activities) {
                            activity in
                            Text(activity.title)
                                .fontWeight(.medium)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                        }
                            
                    }.onAppear {
                        network.fetchActivity()
                    }
                }
            }
            
            .padding()
            
            HStack {
                ZStack {
                    Rectangle()
                        .fill(Color.black)
                        .frame(width: 304, height: 150)
                    
                    VStack {
                    
                        Text("Activity of the day")
                            .fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                        
                            .padding()
                        
                        Text("Storage containers")
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                    }
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Network())
    }
}
