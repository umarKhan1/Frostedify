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

### 🧊 GlassContainer

```dart
GlassContainer(
  height: 100,
  width: 300,
  child: Text("Glass UI", style: TextStyle(color: Colors.white)),
)
```

---

### 🔘 GlassButton

```dart
GlassButton(
  label: "Click Me",
  icon: Icons.touch_app,
  onPressed: () {},
)
```

---

### 🃏 GlassCard

```dart
GlassCard(
  child: Column(
    children: [
      Icon(Icons.ac_unit),
      Text("Cool Card"),
    ],
  ),
)
```

---

### 🔲 GlassAppBar

```dart
GlassAppBar(title: 'Frostedify')
```

---

### 🧊 GlassDialog

```dart
GlassDialog(
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
    GlassContainer(child: Text("Shimmering")),
    const LiquidShimmer(),
  ],
)
```

---

## 🧪 Run Example

```bash
cd example
flutter run
```

> 🎥 Demo Video: [Watch Here](https://yourvideolink.com/frostedify_demo.mp4)

---

## 🛠️ Customize

| Prop           | Description                        | Default                  |
|----------------|------------------------------------|--------------------------|
| `blur`         | Blur intensity (sigma)             | `15`                     |
| `borderRadius` | Border curve                       | `Radius.circular(20)`    |
| `gradient`     | Optional background gradient       | `null`                   |
| `color`        | Background color overlay           | `white.withOpacity(.2)`  |

---

## 🧭 Folder Structure

```
frostedify/
├── lib/
│   ├── frostedify.dart
│   └── src/
│       ├── glass_container.dart
│       ├── glass_button.dart
│       ├── glass_card.dart
│       ├── glass_dialog.dart
│       ├── glass_appbar.dart
│       ├── shimmer_effect.dart
│       └── utils/platform_utils.dart
├── example/
│   └── main.dart
```

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
