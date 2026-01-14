
# 🧮 Counter Practice App (Flutter)
## 📌 Overview
This is my **first Flutter practice app** where I learned how **StatefulWidget**, `setState()`, and widget rebuilding work together.
এই app-এ একটি simple counter আছে যেটা button press করলে increment হয়।
## 🎯 Learning Objective
এই project বানানোর main goal ছিল:
-----------------------------------------------------
* `StatefulWidget` বুঝা                              |
* `setState()` কীভাবে UI rebuild trigger করে        |
* State change হলে widget কেন আবার `build()` হয়
* Flutter widget tree structure বোঝা

---------------------------------------------------

### ✅ StatefulWidget

`Counter_logic` widget টি Stateful, কারণ এখানে data (`count`) change হয়।

```dart
class Counter_logic extends StatefulWidget

### ✅ State Variable

```dart
int count = 0;
```

এই `count` variable-টাই হচ্ছে **state**
এটা change হলেই UI update হয়।
### ✅ setState()
```dart
setState(() {
});
```
* `setState()` Flutter-কে বলে:

  > “State change হয়েছে, UI আবার আঁকো”

* Actual data change (`count++`) আমরা নিজেরাই করি।

---
### ✅ Button Interaction

```dart
ElevatedButton(
  onPressed: () {
    count++;
    setState(() {});
  },
)
```
প্রতিবার button press করলে:

1. `count` বাড়ে
2. `setState()` call হয়
3. UI rebuild হয়
4. Updated count screen-এ দেখা যায়

## 🧱 Widget Structure

```
MaterialApp
 └── Scaffold
     ├── AppBar
     └── Body
         └── Counter_logic
             └── Column
                 ├── Text (count show)
                 └── Button (increment)-

## 🎨 UI Details

* AppBar title: **Practise UI**
* Background color: `Colors.lightGreenAccent`
* Button: `ElevatedButton`
* Text dynamically updates with counter value
## 🧪 What I Observed

* `build()` method বারবার call হয়
* `setState()` না দিলে UI change হয় না
* StatelessWidget দিয়ে এই কাজ possible না
* Flutter UI = pure function of state

---

## 🚀 Future Improvements

In future, I plan to add:

* `initState()` & `dispose()` lifecycle logs
* Reset button
* Navigation to another screen
* TextField input (STEP 2)

---


