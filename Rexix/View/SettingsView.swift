import SwiftUI

struct SettingsView: View {
    var body: some View {
            Form {
                Section(header: Text("App Settings")) {
                    Toggle("Notifications", isOn: .constant(true))
                    Toggle("Dark Mode", isOn: .constant(false))
                }

                Section(header: Text("Account Settings")) {
                    NavigationLink(destination: Text("Account Details")) {
                        Text("Account Details")
                    }
                    NavigationLink(destination: Text("Change Password")) {
                        Text("Change Password")
                    }
                }

                Section(header: Text("General")) {
                    NavigationLink(destination: Text("Language")) {
                        Text("Language")
                    }
                    NavigationLink(destination: Text("Region")) {
                        Text("Region")
                    }
                }

                Section(header: Text("More")) {
                    NavigationLink(destination: AboutView()) {
                        Text("About")
                    }
                    NavigationLink(destination: Text("Help & Feedback")) {
                        Text("Help & Feedback")
                    }
                }
            }
            .navigationBarTitle("Settings")
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
