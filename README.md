# PANJI_BAGASKARA_H1D022106_A_PRAKTIKUMMOBILE2024

---

### **Penjelasan Kode**

#### **Fungsi `main()`**
```dart
void main() {
  runApp(MyApp());
}
```
Fungsi utama aplikasi memanggil widget `MyApp`, yang merupakan akar dari aplikasi Flutter ini.

---

#### **Widget `MyApp`**
```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
```
- **`MaterialApp`**: Widget utama untuk aplikasi berbasis Material Design.
  - **`title`**: Judul aplikasi.
  - **`theme`**: Tema warna aplikasi.
  - **`home`**: Halaman utama aplikasi, yaitu `MyHomePage`.

---

#### **Stateful Widget `MyHomePage`**
```dart
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
```
Widget ini bersifat **stateful**, yang artinya dapat berubah selama siklus hidup aplikasi. **`_MyHomePageState`** mengatur logika dan status widget.

---

#### **State `_MyHomePageState`**
```dart
class _MyHomePageState extends State<MyHomePage> {
  String _displayText = "Hello, World!";

  void _changeText() {
    setState(() {
      if (_displayText == "Hello, World!") {
        _displayText = "Hehehe";
      } else {
        _displayText = "Hello, World!";
      }
    });
  }
}
```

1. **Variabel `_displayText`**:
   - Menyimpan teks yang ditampilkan pada layar.
   - Nilai awalnya adalah `"Hello, World!"`.

2. **Fungsi `_changeText()`**:
   - Mengubah nilai `_displayText` setiap kali tombol ditekan.
   - Memanggil `setState()` agar aplikasi memperbarui tampilan berdasarkan perubahan status.

---

#### **Fungsi `build()`**
```dart
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Flutter Demo Home Page"),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            _displayText,
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _changeText,
            child: Text('Change Text'),
          ),
        ],
      ),
    ),
  );
}
```

1. **`Scaffold`**: Struktur dasar halaman, menyediakan AppBar dan Body.
2. **`AppBar`**: Bilah aplikasi di bagian atas dengan judul "Flutter Demo Home Page".
3. **`Center`**: Menempatkan isi halaman di tengah layar.
4. **`Column`**: Menyusun elemen secara vertikal:
   - **`Text`**: Menampilkan nilai `_displayText` pada layar dengan ukuran font 24.
   - **`SizedBox`**: Menambahkan jarak vertikal sebesar 20 piksel.
   - **`ElevatedButton`**: Tombol dengan teks "Change Text" yang memanggil fungsi `_changeText()` saat ditekan.

---

### **Cara Kerja**
1. Ketika aplikasi pertama kali dijalankan, teks **"Hello, World!"** ditampilkan.
2. Ketika tombol "Change Text" ditekan:
   - Fungsi `_changeText()` dipanggil.
   - Nilai `_displayText` diubah menjadi `"Hehehe"` atau kembali ke `"Hello, World!"` berdasarkan kondisi.
   - Tampilan diperbarui secara otomatis melalui `setState()`.

---

### **Perubahan untuk Tampilan Menarik**
Untuk meningkatkan tampilan, tambahkan elemen berikut:
1. Ubah warna tombol dan teks.
2. Gunakan animasi untuk transisi perubahan teks.
3. Tambahkan ikon pada tombol.
