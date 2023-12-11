# Użyj oficjalnego obrazu Pythona
FROM python:3.8-slim

# Ustaw katalog roboczy na /app
WORKDIR /app

# Skopiuj plik requirements.txt i zainstaluj zależności
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Skopiuj pozostałe pliki z projektu
COPY . .

# Otwórz port 5000
EXPOSE 5000

# Uruchom aplikację
CMD ["python", "app.py"]