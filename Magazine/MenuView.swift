//
//  MenuView.swift
//  Magazine
//
//  Created by Daniel Fitzpatrick on 3/23/23.
//

import SwiftUI
import RealityKit

struct MenuView: View {
        @Environment(\.dismiss) var dismiss
        @State private var showingSheet = false
    
    
    var body: some View {
        
        VStack{
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 3000,height: 300,alignment:.top)
                .padding(5)
            
            Text("ANI + Muisc Magazine")
                  .font(.largeTitle)
            Spacer()
           
                List{
                    Button("Issue 1"){ showingSheet.toggle()}
                        .sheet(isPresented: $showingSheet) { ContentView()}
                    
                    
                    Text("Issue 2 (coming soon)")
                    Text("Issue 3 (coming soon)")
                }
                
            }
        }
     
        
        }
        
        
    


struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
