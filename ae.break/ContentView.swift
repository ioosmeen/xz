//
//  ContentView.swift
//  ae.break
//
//  Created by egos on 11.05.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var logs: [String] = []
    @State private var isJailbreaking = false

    let fakeLogs = [
        "[*] Starting ae.break by aras-egemen...",
        "[*] Initializing...",
        "[*] Exploit triggered!",
        "[*] Bypassing AMFI...",
        "[*] Escaping sandbox...",
        "[*] Gaining root privileges...",
        "[✓] Jailbreak succeeded 🎉",
        "[*] Enjoy your freedom. – Aras Baba"
    ]

    var body: some View {
        ZStack {
            // 🔵 Gradient arka plan
            LinearGradient(gradient: Gradient(colors: [Color.purple.opacity(0.9), Color.blue.opacity(0.8)]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)

            VStack(spacing: 20) {
                // 🟣 Dopamine tarzı başlık
                Text("ae.break")
                    .font(.system(size: 48, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .shadow(radius: 10)

                Text("Aras ve Egemen tarafından yapıldı")
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.7))

                Text("Dopamine")
                    .font(.title3)
                    .fontWeight(.medium)
                    .foregroundColor(.white.opacity(0.6))

                Spacer()

                // 🖥️ Log ekranı
                ScrollView {
                    VStack(alignment: .leading, spacing: 5) {
                        ForEach(logs, id: \.self) { log in
                            Text(log)
                                .font(.system(.body, design: .monospaced))
                                .foregroundColor(.green)
                        }
                    }
                    .padding()
                    .background(Color.black.opacity(0.3))
                    .cornerRadius(10)
                    .padding(.horizontal)
                }
                .frame(height: 250)

                // 🔘 Buton
                Button(action: startFakeJailbreak) {
                    Text(isJailbreaking ? "Jailbreaking..." : "Start Jailbreak")
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white.opacity(0.2))
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                .disabled(isJailbreaking)
                .padding(.horizontal)

                Text("🧠 Aras Baba 😎")
                    .font(.caption)
                    .foregroundColor(.white.opacity(0.6))

                Spacer()
            }
            .padding()
        }
    }

    // ⏱️ Jailbreak animasyonu (simülasyon)
    func startFakeJailbreak() {
        logs.removeAll()
        isJailbreaking = true

        for (index, log) in fakeLogs.enumerated() {
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 1.2) {
                logs.append(log)
                if index == fakeLogs.count - 1 {
                    isJailbreaking = false
                }
            }
        }
    }
}


