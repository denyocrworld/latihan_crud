
### Instruksi
#### Lengkapi View dan Controller tiap module di project ini
----

```
git clone https://github.com/denyocrworld/latihan_crud
cd latihan_crud
dart pub get --verbose
code .
```
----


0. Buka file lib/env.dart
Isi dulu semua datanya yaa! Wajib!

1.  Buka LoginView dan LoginController isi sesuai instruksi

2.  Buka ProductListView, ProductListController isi sesuai instruksi

3.  Buka ProductFormView, ProductFormController isi sesuai instruksi

<b>Jika Login sudah berhasil dan Create, Update dan Delete Product sudah berjalan maka test nomor 1-3 selesai</b>

---

4. Buat fitur yang sama di CustomerListView dan CustomerListController, CustomerFormView dan CustomerFormController gunakan CustomerService!
Untuk datanya, cukup:
```
photo  (q_image_picker)
customer_name (q_textfield)
birth_date (q_date_picker)
address (q_memofield)
```

<b> JIka fitur Get, Create, Update dan Delete Customer bekerja maka tasks nomor 4 selesai</b>

---

5. Tampilkan semua product di POSView (mirip dengan cara menampilkan product di ProductListView).
Tampilkan dalam bentuk Cart, gunakan snippet:
```
card2_cart1
atau
card2_cart2
atau
card2_cart3
```

6. Terapkan state management untuk menambahkan dan mengurangi qty, seperti di bawah ini dan terapkan di View(Nah kira2 di View perlu diterapkan seperti apa ya? Silahkan dicoba2)
```
increase(item) {
    item["qty"] ??= 0;
    item["qty"]++;
    setState((){});
}

decrease(item) {
    item["qty"] ??= 0;
    if(item["qty"]==0) return;
    item["qty"]--;
    setState((){});
}
```

7. Buatlah getter sperti ini:
```
double get total {
    //Tambahkan kode untuk mendapatkan total products disini
    // Clue 1: Gunakan for(var item in products)
    // Clue 2: Tambahkan kode ini supaya ga error item["qty"] ??= 0;
    // Clue 3: total = double.parse(item["qty"].toString()) * double.parse(item["price"].toString());
    return 0;
}
```