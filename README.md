## **1. A000124 of Sloane’s OEIS**
**A000124** dari **OEIS (Online Encyclopedia of Integer Sequences)** adalah **"Lazy Caterer's Sequence"**, yang menggambarkan jumlah maksimum potongan yang dapat dibuat pada lingkaran dengan **n** garis lurus.  

### Rumus Umum
```
a(n) = (n(n+1)) / 2 + 1
```
Ini juga merupakan bentuk geser dari bilangan segitiga (**Triangular Numbers**) dengan tambahan 1.

### Contoh Program
![Contoh Program](/img/img1.png)


## **2. Dense Ranking**
**Dense Ranking** adalah sistem peringkat di mana pemain dengan skor yang sama berbagi peringkat yang sama, dan peringkat berikutnya tidak melewati angka, melainkan tetap berurutan.  

### Contoh Program
![Contoh Program 1](/img/img2a.png)
![Contoh Program 2](/img/img2b.png)
![Contoh Program 3](/img/img2c.png)


## **3. Balanced Bracket**
**Balanced Bracket** adalah kondisi di mana setiap tanda kurung dalam suatu string memiliki pasangan yang sesuai dan tersusun dengan benar sesuai dengan aturan pembuka dan penutupnya.  

### **Kompleksitas**
1. **Time Complexity: O(n)**  
Setiap karakter dalam string diperiksa sekali, dengan operasi **push** dan **pop** pada stack yang berjalan dalam waktu konstan **O(1)** sehingga kompleksitas waktunya **O(n)** untuk **n** karakter.  
   
2. **Space Complexity: O(n)**  
Dalam worst case dimana semua karakter adalah opening bracket, stack menyimpan **n/2** elemen sehingga kompleksitas ruangnya **O(n)**.  

### Contoh Program
![Contoh Program](/img/img3.png)


## Setup
1. Clone repsoitori
2. Ubah directory ke src ```cd src```
3. Jalankan ```dart <nama file>```