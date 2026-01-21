# Flutter Localization & Theme Explorer 🌐✨

An interactive Flutter application designed to showcase seamless multi-language support and dynamic theme switching within a multi-screen user journey.

## 🚀 App Flow & Logic

* **Language Selection (Initial Screen)**: Upon launch, users are presented with a clean interface to choose their preferred language (Azerbaijani, English, or Russian).
* **Dynamic Theme Toggle**: Using the top-right switch icon, users can instantly swap between **Light** and **Dark** modes across the entire application.
* **Localized Content Delivery**: Once a language is selected and the user continues, the second screen (Home) renders all content, buttons, and headers in the chosen language.
* **Two-Way Navigation**: Users can tap the globe icon on the Home screen to return to the initial page and re-configure their language settings at any time.

## ✨ Key Features

* **Real-time UI Updates**: The theme and language changes happen instantly without requiring an app restart.
* **Multi-language Support**: Integrated support for Azerbaijani, English, and Russian.
* **Sleek Navigation**: Intuitive flow between settings and content screens.
* **Responsive Design**: Consistent UI layout that adapts perfectly to both light and dark aesthetics.

## 📸 Screen Showcase

| 1. Splash Screen | 2. Light Theme / Lang | 3. Dark Theme / Lang | 4. Localized Home |
| :---: | :---: | :---: | :---: |
| <img width="435" height="761" alt="Screenshot 2026-01-21 212337" src="https://github.com/user-attachments/assets/c410f9bd-e464-4f14-94ab-2f1f7f221e2a" /> |<img width="423" height="767" alt="Screenshot 2026-01-21 212344" src="https://github.com/user-attachments/assets/48618310-11e0-4491-8f84-64600a606f88" /> | <img width="417" height="788" alt="Screenshot 2026-01-21 212410" src="https://github.com/user-attachments/assets/33e4f12c-2e17-40cf-98a2-af092f49a9fc" /> | <img width="432" height="783" alt="Screenshot 2026-01-21 212416" src="https://github.com/user-attachments/assets/0dc810c7-6083-4508-8fa5-502567bb5bb3" />|




## 🛠️ Technical Details

* **State Management**: Handling theme and language states across multiple screens.
* **Conditional Rendering**: Assets and text colors dynamically update based on the active theme mode.
* **Navigation Logic**: Utilizing Flutter's `Navigator` for seamless screen transitions.
