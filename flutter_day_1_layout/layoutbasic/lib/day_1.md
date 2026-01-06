# 📘 Flutter Learning – Day 1 (MaterialApp & Theme Foundation)

আজকে Flutter-এর MaterialApp এবং Theme system নিয়ে strong foundation তৈরি করেছি।

---

## ✅ Topics Covered

### 1️⃣ Flutter App Entry Flow
- `void main()` → Flutter app entry point
- `runApp()` → Flutter engine start করে
- `MyApp` → Root widget concept

---

### 2️⃣ Widget Inheritance Basics
- `StatelessWidget` কেন ব্যবহার করি
- `StatefulWidget` কখন দরকার হয়
- `build(BuildContext context)` method
- `BuildContext` কী এবং Flutter কীভাবে দেয়

---

### 3️⃣ `MaterialApp` Core Properties (Foundation)
- `MaterialApp` কী কাজ করে
- `theme` → App-level UI control
- `debugShowCheckedModeBanner: false`
- `home` → First screen decide করে

> ❌ `title` এবং `routes` ইচ্ছাকৃতভাবে এখন skip করা হয়েছে  
> (State management শেখার পর route শেখা হবে)

---

### 4️⃣ Modern Theming with `ThemeData`
- `ThemeData` কী
- `useMaterial3: true`
- Theme centralize করার concept
- Theme কেন app-level state

---

### 5️⃣ `ColorScheme.fromSeed()` (Important Concept)
- `seedColor` দিলে Flutter auto color generate করে
- Auto handled colors:
  - primary
  - background
  - surface
  - button
  - text contrast
- Manual color না দিয়েও clean UI পাওয়া যায়

---

### 6️⃣ Surface vs Background Concept
- `background` → Screen / Scaffold base
- `surface` → Card, Dialog, BottomSheet
- Flutter widget role দেখে color apply করে

---

### 7️⃣ `AppTheme` Class (Best Practice)
- Theme আলাদা class এ রাখা
- `static ThemeData` ব্যবহার
- Object না বানিয়েই theme access
- Example:

```dart
class AppTheme {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.green,
    ),
  );
}
8️⃣ static vs const Concept

static → class-level access

const → value change হবে না

ThemeData কেন const হয় না

Design constants কিভাবে রাখা হয়

9️⃣ Auto Theming Behavior (Confirmed Understanding)

Card, Button, AppBar এ আলাদা করে color না দিলেও
Flutter theme অনুযায়ী auto style দেয়

seedColor delete করলে color random হয় না

Default না দিলে Flutter blue theme নেয়

🔟 Architecture Decisions (Learning Strategy)

Theme আগে, UI পরে

State management শেখার আগে route শেখা হবে না

Material widgets আগে, navigation পরে

🎯 Current Status

✔ MaterialApp foundation complete
✔ Theme system clear
✔ Auto theming logic understood

⏭️ Next Planned Topics

Scaffold (AppBar, body, FAB)

Basic layout (Row, Column, Padding)

Buttons & Text widgets

Then → StatefulWidget