import SwiftUI

struct CartView: View {
    var body: some View {
        NavigationView {
            Text("Your Cart is Empty")
                .font(.title)
                .foregroundColor(.gray)
                .navigationTitle("Cart")
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
