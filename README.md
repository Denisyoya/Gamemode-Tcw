# 🎮 Gamemode TCW (Team Control War) - SA-MP

Gamemode SAMP berbasis **Attack and Defend** dengan sistem pertempuran tim yang seru dan kompetitif.

---

## 📖 Daftar Isi
- [Deskripsi](#deskripsi)
- [Fitur Utama](#fitur-utama)
- [Mekanik Gameplay](#mekanik-gameplay)
- [Sistem Poin & Level](#sistem-poin--level)
- [Instalasi](#instalasi)
- [Kontrol & Commands](#kontrol--commands)
- [Configurasi](#configurasi)

---

## 🎯 Deskripsi

**TCW (Team Control War)** adalah gamemode SA-MP yang menghadirkan pengalaman pertempuran tim yang dinamis. Dua tim saling bersaing untuk menguasai area strategis di peta, dengan sistem serangan dan pertahanan yang seimbang.

Gamemode ini menggabungkan:
- ⚔️ Pertempuran real-time antar tim
- 🏆 Sistem poin dan ranking
- 🎖️ Level progression dan rewards
- 📍 Area kontrol yang strategis
- 💰 Sistem ekonomi dalam game

---

## ✨ Fitur Utama

### 1. **Sistem Tim Dua Pihak**
- **Tim Penyerang (Attackers)**: Misi menguasai base musuh
- **Tim Pembela (Defenders)**: Misi melindungi base sendiri
- Rotasi otomatis setiap putaran

### 2. **Area Strategis**
- Base pertahanan dengan titik pertahanan kritis
- Zona penyerangan dengan checkpoint progression
- Objek statis yang dapat dirusak
- Spawning point dinamis

### 3. **Sistem Pertempuran**
- Berbagai senjata tersedia
- Damage system yang realistis
- Armor & health management
- Respawn dengan countdown timer

### 4. **Sistem Poin & Reward**
- Poin untuk kills/assists
- Poin bonus untuk objective completion
- Poin team-wide bonuses
- Cash rewards setiap putaran

### 5. **Progression System**
- Level ranking pemain
- Stat tracking (kills, deaths, wins)
- Leaderboard global
- Achievement system

### 6. **Komunikasi Tim**
- Chat khusus tim
- Voice commands
- Squad system
- Kill notifications

---

## 🎮 Mekanik Gameplay

### **Mode Attack & Defend**

#### **Fase Serangan (Attack)**
```
Durasi: 10-15 menit (dapat dikonfigurasi)
Tujuan Attacker: 
  ├─ Menghancurkan tujuan pembela
  ├─ Membunuh semua defender
  └─ Merebut flag/mencapai objective

Tujuan Defender:
  ├─ Melindungi struktur/objective
  ├─ Mempertahankan area
  └─ Menghilangkan semua penyerang
```

#### **Sistem Pengukuhan Area**
- Garis depan dinamis
- Progress bar pertahanan
- Multiple checkpoint progression
- Visual indicators untuk posisi strategi

#### **Objective Completion**
- Primary Objective: Menghancurkan target utama
- Secondary Objectives: Tugas tambahan untuk bonus
- Tertiary Objectives: Tantangan khusus

### **Respawn Mechanics**
```
Attacker Respawn: Wave-based (30 detik interval)
Defender Respawn: Individual (15 detik delay)
Max Players: 20 vs 20 (customizable)
```

---

## 🏅 Sistem Poin & Level

### **Poin Diperoleh Dari**

| Aksi | Poin | Catatan |
|------|------|---------|
| Kill | 10 | Per enemy |
| Assist | 5 | Damage damage sebelum kill |
| Objective Destroy | 50 | Per objective selesai |
| Team Win | 30 | Bonus tim menang |
| Headshot | 15 | Double dari kill normal |
| Streak Kill | 50+ | Bonus multi-kill |
| Flag Capture | 100 | Jika ada flag mode |

### **Level & Ranking**
```
Level 1-10:    Beginner
Level 11-25:   Intermediate
Level 26-50:   Advanced
Level 51-75:   Expert
Level 76-100:  Master
```

### **Rewards**
- Cash per level up
- Weapon unlocks
- Skin/appearance options
- Special items & bonuses

---

## 💻 Instalasi

### **Persyaratan**
- SA-MP Server 0.3.7 atau lebih tinggi
- Pawn Compiler
- MySQL database (optional untuk stats)

### **Langkah Instalasi**

1. **Extract fix.zip**
   ```bash
   unzip fix.zip
   ```

2. **Copy file ke server**
   ```bash
   cp -r gamemode/* /path/to/samp-server/gamemodes/
   cp -r includes/* /path/to/samp-server/include/
   cp -r plugins/* /path/to/samp-server/plugins/
   ```

3. **Konfigurasi server.cfg**
   ```
   gamemode0 tcw 1
   mapname Team Control War
   port 7777
   ```

4. **Compile gamemode**
   ```bash
   pawn gamemodes/tcw.pwn -o gamemodes/tcw.amx
   ```

5. **Start server**
   ```bash
   ./samp-server
   ```

---

## 🎮 Kontrol & Commands

### **Kontrol Dasar**
| Aksi | Tombol |
|------|--------|
| Gerak | WASD / Arrow Keys |
| Tembak | Spacebar / Left Click |
| Zoom | Mouse Wheel Up |
| Sprint | Left Shift |
| Jump | Spacebar |
| Reload | R |
| Chat | T (Global) / Y (Team) |

### **Commands Pemain**

```
/help              - Tampilkan bantuan
/stats             - Lihat statistik pribadi
/team <1|2>        - Switch tim (jika allowed)
/weapons           - Lihat senjata tersedia
/top               - Lihat top 10 pemain
/rules             - Peraturan gamemode
/spawn             - Respawn (jika tidak di combat)
/objective         - Info objective
/squad             - Manajemen squad
/voicechat         - Toggle voice chat
```

### **Commands Admin**
```
/asetlevel <id> <level>      - Set player level
/amoney <id> <amount>         - Give money to player
/akill <id>                   - Kill player
/afreeze <id>                 - Freeze player
/aunfreeze <id>               - Unfreeze player
/areload <type>               - Reload config
/aannounce <message>          - Announce ke semua
/arestart                     - Restart gamemode
```

---

## ⚙️ Configurasi

### **File Config Utama: gamemode/config.cfg**

```ini
; ===== GAMEPLAY SETTINGS =====
[GameplaySettings]
MaxPlayers=40
MaxPlayersPerTeam=20
RoundDuration=900              ; 15 menit
AttackPhaseTime=600            ; 10 menit
RespawnTime=15                 ; detik
WaveRespawnTime=30             ; detik untuk attacker

; ===== TEAM SETTINGS =====
[TeamSettings]
Team1Name=Attackers
Team1Color=0xFF0000FF         ; Merah
Team2Name=Defenders
Team2Color=0x0000FFFF         ; Biru
AllowTeamSwitch=1             ; 1=yes, 0=no
BalanceTeams=1

; ===== MONEY SYSTEM =====
[MoneySystem]
WinBonus=5000
LoseBonus=2000
KillReward=500
ObjectiveReward=10000
MinimumStartMoney=1000

; ===== WEAPONS =====
[WeaponSettings]
StartWeapon=25                ; Deagle
MaxAmmo=9999
AllowRPGs=1
AllowSniper=1
AllowC4=0

; ===== OBJECTIVE =====
[ObjectiveSettings]
NumObjectives=3
ObjectiveDamagePerHit=25
TimeToDestroyObjective=300    ; 5 menit
```

---

## 🎯 Tips & Strategi

### **Untuk Penyerang (Attacker)**
1. Koordinasi dengan tim - jangan menyerang sendirian
2. Gunakan smoke grenade untuk cover
3. Focus fire pada satu objective
4. Manfaatkan height advantage
5. Ganti loadout sesuai situasi

### **Untuk Pembela (Defender)**
1. Posisikan diri di lokasi strategis
2. Cover objective dari multiple angles
3. Jangan stray terlalu jauh dari base
4. Pasang ambush di chokepoint
5. Prioritas kill objective rushers

### **General Tips**
- Komunikasi adalah kunci
- Map knowledge sangat penting
- Manajemen ammo dengan baik
- Listen untuk footsteps musuh
- Keep moving, jangan camp di 1 spot

---

## 🐛 Troubleshooting

### **Issue: Gamemode tidak load**
```
Solusi:
1. Check server.cfg - pastikan gamemode line benar
2. Verify file permissions
3. Check compile errors di console
4. Update SA-MP server versi terbaru
```

### **Issue: Player respawn di lokasi salah**
```
Solusi:
1. Cek spawn.fs configuration
2. Reset player position di database
3. Verify spawn point coordinates
```

### **Issue: Objective tidak bisa dirusak**
```
Solusi:
1. Check objective.inc coding
2. Verify damage values dalam config
3. Test dengan spawning dekat objective
```

---

## 📝 Credits & License

**Developer**: Denisyoya  
**Type**: Team-based Attack/Defend Gamemode  
**License**: Open Source  

Gamemode ini dapat dimodifikasi dan didistribusikan sesuai kebutuhan.

---

## 📞 Support & Contact

Untuk pertanyaan, saran, atau bug report:
- Buat issue di repository ini
- Contact melalui GitHub profile
- Forum diskusi di community

---

## 🚀 Roadmap

- [ ] Implement squad system
- [ ] Add more objective types
- [ ] Advanced stat tracking
- [ ] Clan warfare support
- [ ] Custom map support
- [ ] Achievement system
- [ ] Tournament mode
- [ ] Mobile admin panel

---

**Last Updated**: Mei 2026  
**Version**: 1.0.0

---

*Happy Gaming! 🎮*
