# ❄️ Frostedify

**Frostedify** brings the stunning **Liquid Glass UI (Glassmorphism)** to your Flutter apps. Add beautiful blur, gradients, shimmer effects, and glass-style components — all in one easy-to-use package.

> ✨ Inspired by Apple’s glass UI on iOS

![Image](https://github.com/user-attachments/assets/2bec4994-c692-44c6-a5ee-f7dafba199cb)
---

## 🎯 Why Frostedify?

- ✅ Clean, reusable `Frostedify Glass Container`
- ✅ `Frostedify Glass Button`, `Frostedify Glass Card`, `Frostedify Glass Dialog`,`Frostedify Navigation`,  and `Frostedify Glass AppBar`
- ✅ Optional `Frostedify ShimmerEffect` (animated light glint)
- ✅ Platform-aware rendering (Android, iOS, Web, Desktop)
- ✅ Easy to use, beautifully customizable

---

## 📦 Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  frostedify: ^1.0.0
```


Then run:

```bash
flutter pub get
```

---

## 🚀 Getting Started

Import the package:

```dart
import 'package:frostedify/frostedify.dart';
```

---

## 💡 Components & Usage

### 🧊 FrostedifyGlassContainer

```dart
FrostedifyGlassContainer(
  height: 100,
  width: 300,
  child: Text("Glass UI", style: TextStyle(color: Colors.white)),
)
```

---

### 🔘 FrostedifyGlassButton

```dart
FrostedifyGlassButton(
  label: "Click Me",
  icon: Icons.touch_app,
  onPressed: () {},
)
```

---

### 🃏 FrostedifyGlassCard

```dart
FrostedifyGlassCard(
  child: Column(
    children: [
      Icon(Icons.ac_unit),
      Text("Cool Card"),
    ],
  ),
)
```

---

### 🔲 FrostedifyGlassAppBar

```dart
FrostedifyGlassAppBar(title: 'Frostedify')
```

---

### 🧊 FrostedifyGlassDialog

```dart
FrostedifyGlassDialog(
  title: "Hello!",
  content: "This is a glass dialog",
  onConfirm: () => Navigator.pop(context),
)
```

---

### ✨ ShimmerEffect

```dart
Stack(
  alignment: Alignment.center,
  children: [
    FrostedifyGlassContainer(child: Text("Shimmering")),
    const LiquidShimmer(),
  ],
)
```

---



### ✨ FrostedifyNaviagationBar

```dart
  FrostedifyNaviagationBar(
  currentIndex: index,
  onTap: (i) => setState(() => index = i),
  items: [
    FrostedifyNaviagationBootomNavigationClass(icon: Icons.home, label: 'Home'),
    FrostedifyNaviagationBootomNavigationClass(icon: Icons.favorite, label: 'Likes'),
    FrostedifyNaviagationBootomNavigationClass(icon: Icons.person, label: 'Profile'),
      FrostedifyNaviagationBootomNavigationClass(icon: Icons.settings, label: 'Setting'),

  ],
),
```

---

## 🧪 Run Example

```bash
cd example
flutter run
```


## 🛠️ Customize

| Prop           | Description                        | Default                  |
|----------------|------------------------------------|--------------------------|
| `blur`         | Blur intensity (sigma)             | `15`                     |
| `borderRadius` | Border curve                       | `Radius.circular(20)`    |
| `gradient`     | Optional background gradient       | `null`                   |
| `color`        | Background color overlay           | `white.withOpacity(.2)`  |

---


## 🌐 Platform Support

✅ iOS  
✅ Android  
✅ Web  
✅ Desktop (macOS, Windows, Linux)

---

## 💬 Contributing

Have ideas, feedback, or features to add?  
We welcome pull requests and issues from the community!

---

## 📜 License

MIT License © 2025 Muhammad Omar

---

## 👨‍💻 Author

Developed with ❤️ by [@MuhammadOmar29](https://github.com/umarKhan1/)

---

## 🙌 Support

If you like this package, please ⭐ it on GitHub and share it with the Flutter community!
