import SwiftUI

struct travelAcct: View {
    @State private var fullName = ""
    @State private var dateOfBirth = Date()
    @State private var passportNumber = ""
    @State private var passportExpirationDate = Date()
    @State private var hasTravelInsurance = false
    
    var body: some View {
        Form {
            Section(header: Text("Personal Information")) {
                TextField("Full Name", text: $fullName)
                DatePicker("Date of Birth", selection: $dateOfBirth, displayedComponents: .date)
            }
            
            Section(header: Text("Passport Information")) {
                TextField("Passport Number", text: $passportNumber)
                DatePicker("Passport Expiration Date", selection: $passportExpirationDate, displayedComponents: .date)
            }
            
            Section(header: Text("Travel Insurance")) {
                Toggle("Do you have travel insurance?", isOn: $hasTravelInsurance)
            }
            
            Section {
                Button(action: saveAccount) {
                    Text("Save")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, maxHeight: 40)
                        .background(Color.blue)
                        .cornerRadius(8)
                }
            }
        }
        .navigationBarTitle("Account")
    }
    
    func saveAccount() {
        // Perform saving account logic here
    }
}

struct travelAcct_Previews: PreviewProvider {
    static var previews: some View {
        travelAcct()
    }
}
