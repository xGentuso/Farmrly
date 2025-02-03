import SwiftUI

class AuthViewModel: ObservableObject {
    @Published var isLoggedIn: Bool = false
    @Published var currentUser: User?

    private let userKey = "registeredUser"

    init() {
        loadUser()  // Load user data on app launch
    }

    func register(username: String, password: String) -> Bool {
        guard !username.isEmpty, !password.isEmpty else { return false }
        
        let newUser = User(username: username, password: password)
        if let encoded = try? JSONEncoder().encode(newUser) {
            UserDefaults.standard.set(encoded, forKey: userKey)
            currentUser = newUser
            isLoggedIn = true
            return true
        }
        return false
    }

    func login(username: String, password: String) -> Bool {
        guard let savedData = UserDefaults.standard.data(forKey: userKey),
              let savedUser = try? JSONDecoder().decode(User.self, from: savedData) else {
            return false
        }

        if savedUser.username == username && savedUser.password == password {
            currentUser = savedUser
            isLoggedIn = true
            UserDefaults.standard.set(true, forKey: "isLoggedIn") // ✅ Save login state
            return true
        }
        return false
    }


    func logout() {
        isLoggedIn = false
        currentUser = nil
        // Remove only the login state, not the registered user data
        UserDefaults.standard.set(false, forKey: "isLoggedIn")
    }

    private func loadUser() {
        guard let savedData = UserDefaults.standard.data(forKey: userKey),
              let savedUser = try? JSONDecoder().decode(User.self, from: savedData) else {
            isLoggedIn = false
            return
        }
        currentUser = savedUser
        isLoggedIn = false // Set to false unless the user explicitly logs in
    }
}
