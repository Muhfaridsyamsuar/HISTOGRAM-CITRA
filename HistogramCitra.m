%DATA MATRIKS
data = [1 2 1 1, 3 3 4 7, 2 1 1 7];

%HISTOGRAM = HISTOG
[kolom, baris] = size(data);
histog = zeros(1,7);

for p = 1 : kolom
    for  =q = 1 : baris
        pq data(p,q);
        histog(pq) = histog(pq) + 1;
    end
end

figure(1)
bar(histog)
axis([0 8 0 8])
grid on

%DISTRIBUSI KOMULATIF
komulatif = zeros(1,7);
for f = 1 : 7
    komulatif(f) = sum(histog(1:f));
end

figure(2)
bar(komulatif)
axis([0 8 0 kolom * baris])
grid on

%HISTOGRAM EKUALISASI
ekualisasi = zeros(1,7);
for i = 1 : 7
    ekualisasi(i) = round(komulatif(i) * 7 /(kolom * baris));
end

figure(3)
bar(ekualisasi)
axis([0 8 0 kolom * baris])
grid on