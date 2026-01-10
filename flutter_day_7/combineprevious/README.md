# 📱 Flutter Project – App Structure & Logic

## 🧠 Project Overview
This Flutter project follows a clean and beginner-friendly structure where
UI, navigation, and logic are separated into different files.
The goal is to understand how Scaffold, SliverAppBar, Drawer, and
BottomNavigationBar work together.

---

## 📁 Folder Structure
lib/
├── main.dart  
├── home.dart  
├── silverappbar.dart  
├── botomnavigator.dart  
└── drawer.dart  

---

## 🔑 main.dart — App Entry Point
**Bangla:**  
এই ফাইল থেকেই Flutter app শুরু হয়। এখানে `runApp()` কল করা হয় এবং
`MaterialApp` initialize করা হয়।

**English:**  
This is the entry point of the Flutter application.

**Responsibilities:**
- App start
- MaterialApp setup
- Load the home screen

---

## 🏠 home.dart — Main Container (Scaffold)
**Bangla:**  
এই ফাইলটি পুরো app-এর main container।
এখানেই `Scaffold` থাকে, যেটা Drawer, BottomNavigationBar এবং Body কে একসাথে ধরে।

**English:**  
Acts as the main layout shell of the app.

**Responsibilities:**
- Hold Scaffold
- Connect Drawer, BottomNavigationBar, and Body
- Control overall screen layout

---

## 🧲 silverappbar.dart — Sliver & Scroll Logic
**Bangla:**  
এই ফাইলের কাজ হলো SliverAppBar এবং scroll-related UI handle করা।
এটা শুধুমাত্র body content হিসেবে ব্যবহার হয়।

**English:**  
Handles CustomScrollView and Sliver widgets.

**Responsibilities:**
- SliverAppBar behavior
- Scroll animation
- Sliver content display

**Note:**  
This file does NOT contain Scaffold.

---

## ⬇ botomnavigator.dart — Bottom Navigation Logic
**Bangla:**  
এই ফাইলটি শুধু BottomNavigationBar এর জন্য।
Tab change এবং currentIndex এখানে handle করা হয়।

**English:**  
Reusable BottomNavigationBar widget.

**Responsibilities:**
- Bottom tab navigation
- Handle selected index
- Navigation UI logic

**Note:**  
Used inside Scaffold (not a full page).

---

## 📂 drawer.dart — Drawer / Side Menu
**Bangla:**  
এই ফাইলটি app-এর side menu বা drawer handle করে।
Menu items এবং navigation এখানে থাকে।

**English:**  
Handles app drawer UI and menu navigation.

**Responsibilities:**
- Drawer layout
- Menu items
- Side navigation logic

---

## 🔗 File Connection Flow
main.dart  
→ home.dart (Scaffold)  
→ drawer.dart  
→ botomnavigator.dart  
→ silverappbar.dart  

---

## ✅ Why This Structure Is Good
- Clean and organized code
- Easy to understand for beginners
- Reusable widgets
- Real-world Flutter project structure
- Easy to scale in future

---

## 📝 Learning Outcome
By building this project, you learn:
- How Scaffold controls the app layout
- How SliverAppBar works with scrolling
- How Drawer and BottomNavigationBar coexist
- How to organize Flutter files properly

---

## 💡 Future Improvements
- IndexedStack for tab navigation
- State management (Provider / Riverpod)
- Theme switching
- Multiple Sliver pages per tab
