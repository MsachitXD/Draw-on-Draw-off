struct DrawOnToggleView: View {
    let title: String
    let effect: DrawOnSymbolEffect
    let systemName: String
    let speed: Double
    
    @State private var isActive = true
    
    init(title: String,
         effect: DrawOnSymbolEffect,
         systemName: String = "signature",
         speed: Double,
    ) {
        self.title = title
        self.effect = effect
        self.systemName = systemName
        self.speed = speed
    }
    
    var body: some View {
        VStack {
            Text(title)
                .font(.headline)
                .bold()
            
            HStack {
                Image(systemName: systemName)
                    .foregroundStyle(Color.secondary.opacity(0.3))
                    .frame(maxWidth: .infinity)

                Image(systemName: systemName)
                    .symbolEffect(
                        effect,
                        options: .speed(speed),
                        isActive: isActive
                    )
                    .frame(maxWidth: .infinity)
            }
        }
        .font(.largeTitle)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 15)
                .stroke()
        )
        .onTapGesture {
            isActive.toggle()
        }
    }
}
