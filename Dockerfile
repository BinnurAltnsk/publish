FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime
WORKDIR /app
COPY . .

# Railway 8080 portunu dış dünyaya açıyor, biz de uygulamayı o porttan çalıştırmalıyız
ENV ASPNETCORE_URLS=http://+:8080
EXPOSE 8080

ENTRYPOINT ["dotnet", "tarifkapida.dll"]
