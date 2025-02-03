import SwiftUI

class AuthViewModel: ObservableObject {
    @Published var isLoggedIn: Bool = false

    func login(username: String, password: String) -> Bool {
        if username == "admin" && password == "password" {  // Simple login for demo
            isLoggedIn = true
            return true
        }
        return false
    }

    func register(username: String, password: String) -> Bool {
        // Simulate successful registration (you can expand this logic later)
        if !username.isEmpty && !password.isEmpty {
            print("User registered successfully")
            return true
        }
        return false
    }

    func logout() {
        isLoggedIn = false
    }
}
