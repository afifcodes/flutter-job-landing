## Flutter UI - Job Landing

```dart
void main() => runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Crete'),
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    onGenerateRoute: (settings) {
      if (settings.name == '/') {
        return RouteAnimation.slide(settings, LandingPage());
      }
      return RouteAnimation.slide(settings, LandingPage());
    }));
```

## Development Setup
```
git clone https://github.com/afifudinx/flutter-job-landing.git
cd flutter-job-landing
flutter pub get
flutter run
```

## Screenshots
<img src="screenshots/1.png" />

## Links

* [Website](https://afifudinx.vercel.app)
* [Youtube channel](https://youtube.com/developedbyafif)
* [Instagram](https://instagram.com/developedbyafif)
