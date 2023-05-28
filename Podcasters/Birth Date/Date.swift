//
//import SwiftUI
//
//struct Date: View {
//    @State private var birthdate = Data()
//
//    var body: some View {
//        ZStack {
//            Color.black.edgesIgnoringSafeArea (.all)
//            LazyVStack(alignment: .leading, spacing: 10) {
//                Text ("Birthday")
//                    .font (.largeTitle)
//                    .foregroundColor (.gray)
////                DatePicker(placeholder: "Date of Birth", date: birthday)
////                    .font (.title)
////                    .padding(.horizontal, 16)
////                    .frame (height: 44)
////                    .background (Color .white)
////                    .cornerRadius (10)
//                DatePicker(
//                        "Start Date",
//                        selection: $birthdate,
//                        displayedComponents: [.birthdate]
//                    )
//                    .datePickerStyle(.graphical)
//            }
//            .padding (.horizontal, 20)
//        }
//    }
//}
//
//
//struct Date_Previews: PreviewProvider {
//    static var previews: some View {
//        Date()
//    }
//}
