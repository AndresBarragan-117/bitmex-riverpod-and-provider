# bitmex-riverpod-and-provider

## 1. Key Differences: Provider vs. Riverpod

| Feature | Provider (with ChangeNotifier) | Riverpod (with Notifier) |
|--------|--------------------------------|---------------------------|
| **Widget Dependency** | Depends on `InheritedWidget`. You must be inside the widget tree to access the state. | **Does not depend on `InheritedWidget`**. Can be used from anywhere (even outside widgets, in services or tests). |
| **Compile-time Safety** | Less safe. The type in `Provider.of<T>(context)` is checked at runtime. If `T` does not exist, it fails at runtime. | **More secure**. Everything is verified at compile time. If you try to use a provider that does not exist, the compiler will warn you. |
| **Lifecycle and Disposal (`dispose`)** | You must manually implement `dispose()` and call `super.dispose()`. | Riverpod automatically manages the lifecycle. You only need to use `ref.onDispose(() { ... })` if you need to run specific cleanup logic. |
| **State Access** | Uses `Provider.of<T>(context)` or `Consumer<T>`. | Uses `ref.watch(provider)` or `ref.read(provider)`. |
| **Change Notifications** | You must manually call `notifyListeners()` after updating the state. | The `build()` method of the `Notifier` is automatically called when the state changes. No need to call `notifyListeners()`. |
| **Provider Definition** | Usually defined in the parent widget using `ChangeNotifierProvider`. | Defined as a global variable (or in a separate file) using `final provider = NotifierProvider<...>(...)`. |
| **Testing** | More complex. Requires building the widget tree. | Much easier. You can create a `ProviderContainer` and test providers directly without widgets. |


## 2. When should you use each one and why?

**Use Provider if:**
- You are maintaining a legacy project that already uses it.
- You need a simple, well-documented solution with a large community.
- You don’t need Riverpod’s advanced features (such as accessing providers outside the widget tree).

**Use Riverpod if:**
- You are starting a new project. It is the official recommendation from Flutter.
- You want better compile-time safety.
- You need to test your business logic independently.
- You want to avoid common Provider mistakes (such as forgetting `notifyListeners` or running into context-related issues).
- You want a more consistent and powerful API (e.g. `AsyncValue`, `StateNotifier`, `FutureProvider`, etc.).


## 3. Code Analysis: What Changes?

Your code clearly shows the key differences. Let’s go through the specific points:

### ✅ a) State / Notifier Definition

#### Provider:

```dart
class OrderBookProvider extends ChangeNotifier {
  final BitmexWsService _ws = BitmexWsService(); // Direct initialization
  ...

  OrderBookProvider() { // Constructor starts the stream
    _ws.stream.listen(_onMessage);
  }

  ...

  @override
  void dispose() { // Manual disposal
    _ws.dispose();
    super.dispose();
  }
}
```
- The _ws service is initialized in the ChangeNotifier constructor.
- The stream listener is started inside the constructor.
- dispose() must be handled explicitly by the developer.

#### Riverpod:

```dart
class OrderBookNotifier extends Notifier<OrderBookState> {
  late final BitmexWsService _ws; // Declaration only, no initialization

  @override
  OrderBookState build() { // Main Riverpod method
    _ws = BitmexWsService(); // Initialization happens here
    _ws.stream.listen(_onMessage);

    ref.onDispose(() { // Automatic lifecycle management
      _ws.dispose();
    });

    return OrderBookState.empty(); // Initial state
  }

  void _onMessage(dynamic message) { ... } // Same as in Provider
}
```
- The _ws service is declared as late final.
- Initialization and stream listening happen inside the build() method, which Riverpod calls automatically when the provider is created.
- ref.onDispose(() { ... }) replaces dispose(). Riverpod takes care of calling it when the provider is no longer needed.

### ✅ b) State Updates

#### Provider:

```dart
void _onMessage(...) {
  // ... modifies _buys or _sells ...
  notifyListeners(); // Important! You must call this manually.
}
```
- After changing any internal data (_buys, _sells), you must call notifyListeners() so that the widgets rebuild.

#### Riverpod:
```dart
void _onMessage(...) {
  // ... modifies _buys or _sells ...
  state = OrderBookState( // Just assign the new state
    buys: _buys.values.toList()..sort(...),
    sells: _sells.values.toList()..sort(...),
  );
  // No need to call notifyListeners()
}
```
- In Riverpod, there is no notifyListeners(). You simply assign a new value to state.
- Riverpod automatically detects the change and notifies all listening widgets.
- This eliminates a common Provider error: forgetting to call notifyListeners().

### ✅ c) Global Provider Definition

#### Provider:
- It is usually defined in a parent widget (for example, in `main.dart` or in a top-level widget) using  
  `ChangeNotifierProvider(create: (context) => OrderBookProvider())`.

---

#### Riverpod:

```dart
final orderBookRiverpod =
    NotifierProvider<OrderBookNotifier, OrderBookState>(
  OrderBookNotifier.new,
);
```
- It is defined as a global variable (usually in a separate file, such as providers/order_book_riverpod.dart).
- OrderBookNotifier.new is a reference to the constructor. Riverpod will instantiate it when needed.
- This definition is much cleaner and more centralized.

### ✅ d) Usage in Widgets (not shown, but crucial)

#### Provider:

```dart
final orderBook = Provider.of<OrderBookProvider>(context);
// Or using Consumer
Consumer<OrderBookProvider>(
  builder: (context, provider, child) =>
      Text(provider.buyOrders.length.toString()),
)
```

#### Riverpod:

```dart
final orderBook = ref.watch(orderBookRiverpod); // Listen to changes

// Or if you only need to read it once
final orderBook = ref.read(orderBookRiverpod);
```
- Riverpod’s syntax (ref.watch, ref.read) is more concise and safer.
- ref.watch automatically rebuilds the widget when the state changes.