import SwiftUI
    
struct MeetingView: View {
    var body: some View {
        VStack {
            VStack {
                ProgressView(value: 5, total: 15)
                HStack{
                    VStack(alignment: .leading){
                        Text("Hello World").font(.caption)
                        Label("300", systemImage: "hourglass.tophalf.fill")
                    }
                    Spacer()
                    VStack(alignment: .trailing){
                        Text("Is Remaining").font(.caption)
                        Label("600", systemImage: "hourglass.bottomhalf.fill")
                    }
                    
                }
                .accessibilityElement(children: .ignore)
                .accessibilityLabel("Time Remaining")
                .accessibilityValue("10 Minutes")
                Circle().strokeBorder(lineWidth: 24)
                HStack{
                    Text("Speaker 1 of 3")
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "forward.fill")
                    }
                    .accessibilityLabel("Next Speaker")
                }
            }
        }
        .padding()
    }
}
    
struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
