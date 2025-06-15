#!/bin/bash

# Renkler
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # Reset
CYAN='\033[0;36m'

clear
# Açılış Logosu
toilet -f mono12 -F border "GtxAnqel" | lolcat
echo -e "${CYAN}Eğitim amaçlı sahte hack aracı başlatılıyor...${NC}"
sleep 2

# Hedef Gir
read -p "Hedef kullanıcı adı girin: " target
echo -e "${GREEN}Kullanıcı: $target bulunuyor...${NC}"
sleep 1.5

# Sahte Şifre Kırma Simülasyonu
echo -e "${CYAN}Parola kırma başlatılıyor...${NC}"
for i in $(seq 1 25); do
    echo -ne "${RED}[*] Deneme $i: $(head /dev/urandom | tr -dc A-Za-z0-9 | head -c8)\r"
    sleep 0.15
done
echo ""
sleep 1

echo -e "${GREEN}[✓] Şifre bulundu: 7x!_$target@2025${NC}"
sleep 1

# Sahte IP Adresi Bulma
echo -e "${CYAN}IP adresi tespit ediliyor...${NC}"
sleep 2
echo -e "${GREEN}[✓] IP bulundu: 192.168.$((RANDOM % 255)).$((RANDOM % 255))${NC}"
sleep 1

# Final mesaj
echo ""
echo -e "${CYAN}───────────────────────────────────────────────${NC}"
echo -e "${GREEN}Hack işlemi tamamlandı.${NC}"
sleep 1
echo -e "${RED}Uyarı: Bu sadece bir simülasyondur. Gerçek bir saldırı değildir.${NC}"
echo -e "${CYAN}Eğitim amaçlı olarak hazırlanmıştır. Gerçek veriler içermez.${NC}"
echo -e "${CYAN}───────────────────────────────────────────────${NC}"