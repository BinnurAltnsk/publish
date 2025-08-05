# 1. Küçük boyutlu bir .NET runtime image'ı kullanıyoruz
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime

# 2. Uygulama dosyalarını klasöre kopyalıyoruz
WORKDIR /app
COPY . .

# 3. Uygulamayı dış dünyaya açmak için port tanımlıyoruz
EXPOSE 80

# 4. Uygulamayı başlatıyoruz
ENTRYPOINT ["dotnet", "tarifkapida.dll"]
