//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Manish Agarwal on 30/06/24.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        ZStack{
            NavigationView{
                List(viewModel.appetizers){ appetizer in
                    AppetizerListCell(appetizer: appetizer)
                }
                .listStyle(PlainListStyle())
                .navigationTitle("🍟 Appetizers")
            }
            .onAppear{
                viewModel.getAppetizers()
            }
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem){alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AppetizerListView()
}
