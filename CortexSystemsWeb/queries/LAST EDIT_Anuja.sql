
CREATE TABLE users(
uname varchar(80) primary key,
upassword varchar(70), 
fname varchar(30),
lname varchar(30),
uaddress varchar(100),
email varchar(50),
squestion varchar(100),
sanswer varchar(100),
bpoints real
);

CREATE TABLE categories(
imageurl varchar(70),

cname varchar(70) primary key, 

);


insert into categories values('~/images/CAT/HDD.jpg','Hard Disk Drives')
insert into categories values('~/images/CAT/OptD.jpg','Optical Drives')
insert into categories values('~/images/CAT/AUDIO.jpg','Computer_Audio')
insert into categories values('~/images/CAT/DONGLE.jpg','HSDPA_Dongles')
insert into categories values('~/images/CAT/key.jpg','Keyboards')
insert into categories values('~/images/CAT/MOUSE.jpg','Mouse')
insert into categories values('~/images/CAT/SWT.jpg','Network_Switch')
insert into categories values('~/images/CAT/PRINT.jpg','Printers')
insert into categories values('~/images/CAT/UPS.jpg','UPS')
insert into categories values('~/images/CAT/ROU.jpg','Routers and ADSL')
insert into categories values('~/images/CAT/PRO.jpg','Processors')
insert into categories values('~/images/CAT/RAM.jpg','RAM')
insert into categories values('~/images/CAT/VGA.jpg','GPU')
insert into categories values('~/images/CAT/MB.jpg','Motherboards')




CREATE TABLE products(
imageurl varchar(70),
imageurl2 varchar(70),

cname varchar(70)references categories(cname),
pname varchar(70) unique,
pid varchar(50) primary key, 
sdescrip varchar(500),
descrip varchar(1000),
price real,
);

select*

from products



insert into products values('~/images/AllPRO/HDD_Adata_Ext.jpg','~/images/onePRO/HDD_Adata_Ext.jpg','Hard Disk Drives',' Adata-External Hard','pr001','Capasity : 500GB 
RPM : 5400','Brand : Adata
Model : CH11
Capasity : 500G
RPM : 5400
Dimentions : 120 X 81.5 X 21mm 
Weight : 186g
Intreface : USB 3.0
Color : Black',10000.00)
insert into products values('~/images/AllPRO/HDD_Adata_Ext.jpg','~/images/onePRO/HDD_Adata_Ext.jpg','Hard Disk Drives','Transcend-External Hard','pr002','Capasity : 1TB
RPM  7200','Brand : Transcend
Model : TS1H3P
Capasity : 1TB
RPM : 7200 
Dimentions : 120 X 81.5 X 21mm
Weight : 186g
Interface : USB 3.0 
Color : Silver',15000.00)
insert into products values('~/images/AllPRO/HDD_Samsung_Int.jpg','~/images/onePRO/HDD_Samsung_Int.jpg','Hard Disk Drives','Samsung-Internal Hard','pr003','
Capacity : 250GB 
RPM : 5400','Brand : Samsung
Model : D-MAX16
Capacity : 250GB 
RPM : 5400 
Dimentions  120 X 90 X 30mm
Weight : 200g',5000.00)
insert into products values('~/images/AllPRO/HDD_Seagate_Int.jpg','~/images/onePRO/HDD_Seagate_Int.jpg','Hard Disk Drives','Seagate-Internal Hard','pr004','Capacity : 500GB 
RPM : 7200','Brand : Seagate 
Model : ST32000542AS 
Capacity : 500GB 
RPM : 7200 
Dimentions  120 X 90 X 30mm 
Weight : 220g ',8500.00)

insert into products values('~/images/AllPRO/OptD_Samsung2.jpg','~/images/onePRO/OptD_Samsung2.jpg','Optical Drives','Samsung DVD/R','pr005','DVD+/R 12X 
Double Layer 
Eco-Product','Brand : Samsung 
Model : SE-T066L 
Data Transfer Rate Read : CD - 7.2 MB/sec (48x) 
Data Transfer Rate Read : DVD - 21.6 MB/sec (16x) 
Average Seek Time CD-ROM : 110ms 
Average Seek Time DVD-ROM : 130ms 
Buffer Memory : 2MB',2550.00)
insert into products values('~/images/AllPRO/OptD_Samsung1.jpg','~/images/onePRO/OptD_Samsung1.jpg','Optical Drives','Samsung DVD/Ri','pr006','DVD+/R 46X 
Double Layer /nEco-Product','Brand : Samsung 
Model : SE-T084L 
Data Transfer Rate Read : CD - 7.2 MB/sec (48x) 
Data Transfer Rate Read : DVD - 21.6 MB/sec (16x) 
Average Seek Time CD-ROM : 110ms 
Average Seek Time DVD-ROM : 130ms 
Buffer Memory : 2MB',3250.00)
insert into products values('~/images/AllPRO/OptD_LG.jpg','~/images/onePRO/OptD_LG.jpg','Optical Drives','LG DVD/R','pr007','DVD+/R 48X 
Double Layer 
Eco-Product','Brand : Samsung 
Model : G66IM 
Data Transfer Rate Read : CD - 7.2 MB/sec (48x) 
Data Transfer Rate Read : DVD - 21.6 MB/sec (16x) 
Average Seek Time CD-ROM : 110ms 
Average Seek Time DVD-ROM : 130ms 
Buffer Memory : 2MB',4450.00)

insert into  products values ('~/images/AllPRO/AUD_A80.jpg','~/images/onePRO/AUD_A80.jpg','Computer_Audio',' Creative SBS A80','pr008','1.3kg (Both Left and Right)
 Speaker(10x9x21.5)cm ','Power: 2.5 Watts RMS per channel (2 channels)
 Frequency Response: 90Hz ~ 20kHz
 Signal-to-Noise Ratio (SNR): 75dB
 Product Weight: 1.3kg (Both Left and Right Speakers)
 Dimensions (DxWxH): Speaker(10x9x21.5)cm',1500.00)
insert into  products values ('~/images/AllPRO/AUD_T12.jpg','~/images/onePRO/AUD_T12.jpg','Computer_Audio',' Creative T12 Wireless','pr009','Compatible with any stereo Bluetooth device
High performance wireless audio
Convenient access to controls ','Frequency Response: 20Hz ~ 20kHz
Signal-to-Noise Ratio (SNR): 80dB
Product Weight: 1.16 kg / 2.56 lbs
Dimensions (HxWxD)mm: 18 x 7.1 x 9.8cm / 7 x 2.79 x 3.85 inches (Per channel)
Bluetooth Version: Bluetooth 2.1 + EDR (Enhanced Data Rate)
Supported Bluetooth profiles: AVRCP (Bluetooth Remote Control), A2DP (Wireless Stereo Bluetooth)
Supported Codecs: SBC and aptX
Operating Range: Up to 10 meters (Measured in open space. Walls and structures may affect range of device.)',3400.00)

insert into  products values ('~/images/AllPRO/DON_E732.jpg','~/images/onePRO/DON_E732.jpg','HSDPA_Dongles','Huawei E372 USB Stick','pr010','Downlink peak data rate up to 42Mbps in dual carrier
Uplink up to 5.76Mbps
Business suit exquisite and modernistic style body gives out strong visual impact
Optional external antenna connector to extend coverage','Chip platform: MDM 8220
Form: USB Stick 
Operating frequency(3G): DC-HSPA+/HSPA+/UMTS 2100/1900/900/850MHz
Operating frequency(2G): EDGE/GPRS/GSM 850/900/1800/1900MHz
Speed: Downlink: DC-HSPA+ Dual carrier 42Mbps; Uplink: 5.76Mbps 
Interface: USB 2.0 high speed 
Dimensions: 90mm x 28mm x 15 mm* Weight: <40g 
Receive Diversity: DC-HSPA+/HSPA+/UMTS 2100/1900/900/850MHz 
Micro SD card slot: Support(up to 32GB)
External Antenna interface: Support
Equalizer: Support 
Huawei E372 USB Modem supports Windows XP/Windows Vista/Windows 7, MAC and Linux operating systems',3950.00)
insert into  products values ('~/images/AllPRO/DON_E1762.jpg','~/images/onePRO/DON_E1762.jpg','HSDPA_Dongles','E1762 USB Modem','pr011','download speed 7.2Mbps
The latest device from Huawei to replace the previous E169 Device
It has more functions than E169','HSPA/UMTS 900/2100
GSM/GPRS/EDGE 850/900/1800/1900MHz 
Support 2Mbps (5.76Mbps ready) HSUPA and 7.2Mbps HSDPA services
Receive diversity(UMTS 2100/1900/850MHz)
Support SMS Service
Micro SD Card Slot
Plug and play 
Support Windows 2000, Windows XP, Windows Vista and Mac Operating System',3200.00)
insert into  products values ('~/images/AllPRO/DON_E160G.jpg','~/images/onePRO/DON_E160G.jpg','HSDPA_Dongles','Huawei E160G USB Modem','pr012','HSDPA download up to 3.6 Mbps.
HSDPA upload up to 384 kbps
Doubles up as a memory stick with an optional MicroSD card','EDGE/GPRS/GSM 850/900/1800/1900 MHz
HSPA/UMTS (2100 MHz)
HSDPA download up to 3.6 Mbps.
HSDPA upload up to 384 kbps 
Doubles up as a memory stick with an optional MicroSD card 
Compatible with Windows  2000 / XP Home / XP Pro / Vista / MAC OS X
USB interface 
Dimensions: 75 x 25 x 12 mm
Weight: 50g',3950.00)
insert into  products values ('~/images/AllPRO/DON_E176.jpg','~/images/onePRO/DON_E176.jpg','HSDPA_Dongles','Huawei E176 USB Modem','pr013','\nSupport 2Mbps (5.76Mbps ready) HSUPA and 7.2Mbps HSDPA services
Support SMS Service
Micro SD Card Slot.','HSPA/UMTS 850/1900/2100MHz
GSM/GPRS/EDGE 850/900/1800/1900MHz
Support 2Mbps (5.76Mbps ready) HSUPA and 7.2Mbps HSDPA services
Receive diversity (UMTS 2100/1900/850MHz) 
Support SMS Service
Micro SD Card Slot
Plug and play
Support Windows 2000, Windows XP, Windows Vista and Mac Operating System.',2900.00)

insert into  products values ('~/images/AllPRO/KEY_K750.jpg','~/images/onePRO/KEY_K750.jpg','Keyboards','Logitech Wireless Solar Keyboard K750','pr014','The solar-powered
wireless keyboard that makes battery hassles a thing of the past
Very thin
Feels good.','System Requirements
Windows-based PC
Windows® XP, Windows Vista® or Windows® 7
Light source from sunlight and/or indoor lighting
Advanced 2.4 GHz wireless
Only 1/3 -inch thick',8920.00)
insert into  products values ('~/images/AllPRO/KEY_K800.jpg','~/images/onePRO/KEY_K800.jpg','Keyboards','Logitech Wireless Illuminated Keyboard K800','pr015','The sleek, comfortable keyboard that delivers a brilliant typing experience—day or night
You can work or play anytime with laser-etched, backlit keys that are bright enough to let you type in the dark
Shines on your desk','Laser-etched, backlit keys
Adjustable backlighting
Hand proximity detection
PerfectStroke™ key system
Fast, easy recharging
nSystem Requirements: Windows®-based PC,Windows® XP, Windows Vista® or Windows® 7,
USB Port
Internet access required for software download
Software required for connecting additional devices with Unifying receiver
Software available for downloadhere',8340.00)
insert into  products values ('~/images/AllPRO/KEY_G510.jpg','~/images/onePRO/KEY_G510.jpg','Keyboards','Logitech Gaming Keyboard G510','pr016','Get instant access to the tools and intel you need to win
The GamePanel LCD keeps you informed with notifications, player and server info, and lots more.','GamePanel™ LCD
Custom-color backlighting
Integrated USB audio
18 programmable G-keys
Full-speed USB
Multi-key input
Game/desktop mode
Instant media access
Straight keyboard layout
System Requirements:Windows® XP, Windows Vista® or Windows® 7,Mac OS® X 10.4 or later
Available high-speed USB 2.0 port
20 MB of available hard disk space
CD-ROM drive',9850.00)
insert into  products values ('~/images/AllPRO/KEY_K100.jpg','~/images/onePRO/KEY_K100.jpg','Keyboards','Logitech Classic Keyboard K100','pr017','Everything you want in a keyboard, and nothing you don’t
Small comfort.','Compact, space-saving design
Spill-resistant design
PS/2 connection
System Requirements:Windows® 98, Windows® 2000, Windows® ME, Windows® XP, Windows Vista® or Windows® 7
Available keyboard PS/2 port',1200.00)

insert into  products values ('~/images/AllPRO/MOU_M525.jpg','~/images/onePRO/MOU_M525.jpg','Mouse','Logitech Wireless Mouse M525','pr018','The perfect mix of performance
Scroll wheel for the control freak','Micro-precise scroll wheel
Ergonomically shaped
3-year battery life',3490.00)
insert into  products values ('~/images/AllPRO/MOU_G300.jpg','~/images/onePRO/MOU_G300.jpg','Mouse','Logitech Gaming Mouse G300','pr019','More power
More control
More loot
Nine programmable controls and three onboard profiles mean you can do more, more quickly
Crafted for gaming','Nine programmable controls
Onboard memory profiles
User-configurable lighting
Easy-to-use configuration software
A 2500 dpi sensor accurately tracks slow or fast movements on a wide variety of surfaces.',3280.00)
insert into  products values ('~/images/AllPRO/MOU_M185.jpg','~/images/onePRO/MOU_M185.jpg','Mouse','Logitech Wireless Mouse M185','pr020','A simple, reliable mouse with plug-and-play wireless
No delays or dropouts.
The tiny wireless receiver gives you a connection you can count on.','Plug-and-forget nano receiver
System Requirements:Windows® XP, Windows Vista® or Windows® 7,Mac OS® X 10.5 or later,Linux® kernel 2.6+
USB port',1000.00)
insert into  products values ('~/images/AllPRO/MOU_V470.jpg','~/images/onePRO/MOU_V470.jpg','Mouse','Logitech V470 Cordless Laser Mouse for Bluetooth®','pr021','A Bluetooth® mouse that bumps you up to business-class mobility.','connection from up to 30 feet away, without hassle
Lightweight, durable design
 System Requirements:Windows-based computer-Windows® XP, Windows Vista®, or Windows® 7
 nBroadcom/Widcomm Bluetooth® BTW 1.4.2.21+nBluetooth® wireless technology
 Bluetooth® wireless technology',2300.00)

insert into  products values ('~/images/AllPRO/SWT_1016A.jpg','~/images/onePRO/SWT_1016A.jpg','Network_Switch','D-Link DES-1016A 
','pr022','Connects up to 16 devicesInexpensive
 Fast Ethernet solution for SOHO/SMB
 Auto MDI/MDIX crossover for all ports
 Store-and-forward switching scheme
 Full/half-duplex for Ethernet/Fast Ethernet speeds
 IEEE 802.3x Flow Control
 Plug-and-play installation','Operational Humidity: 10 % to 85 % non-condensing
 Operational Temperature: 0DegC- 40DegC
 Storage Humidity: 10 % to 90 % non-condensing
 Storage Temperature: -10DegC - 70DegC
 Power Adapter Input: 100-240 V AC, 50-60Hz
 Power Consumption: 2.3 W
 Number of Ethernet ports: 16
 Speed: 10/100
 Supported Protocols: IEEE 802.3, IEEE 802.3u, IEEE 802.3x
 Forward Rate: 10 Mbps
 port: 14,880 packets/sec
 100 Mbps port: 148,800 packets/sec
 MAC Address Database: 8000
 MTBF: 840221 hrs
 LEDs: Power, Per Port : Link/Activity
 Additional Features: Star Topology, Buffer Memory 2 MB
 Automatic MAC Address learning
 Certification : FCC Class A, ICES-003 Class A, CE Class A, C-Tick Class A, cUL, LVD
 Height: 44 mm
 Width: 280 mm
 Depth: 125.8 mm
 Mount Type: Rack Mount',3400.00)
insert into  products values ('~/images/AllPRO/SWT_1008A.jpg','~/images/onePRO/SWT_1008A.jpg','Network_Switch','Dlink DES-1008A','pr023','Number of Ports 8-Port 10/100M bps,','Model D link DES-1008A
Operating Temperature 0 °C ~ 40 ºC (32°F ~ 104°F )
Storage Temperature -10°C ~ 70°C (14°F ~ 158°F )
Operating Humidity 10% ~ 85%
Dimensions 141 x 110 x 34 mm (5.55 x 4.33 x 1.34 inch )
Maximum Power Consumption 5.5 Watts
Number of Ports 8-Port 10/100M bps
Weight 0.268Kg',3400.00)
insert into  products values ('~/images/AllPRO/SWT_2401.jpg','~/images/onePRO/SWT_2401.jpg','Network_Switch','SMC Smcfs2401 24port','pr024','SMCFS2401: 24 x 10/100 Mbps
Auto-negotiation RJ-45 ports','FEATURE: IEEE 802.3x Flow Control
IEEE 802.1p QoS
Auto-MDI/MDIX,IEEE 802.3az
LED System: Power
Ports: Link/Activity
SWITCHING DATABASE: 8K MAC address entries
BUFFER MEMORY: 256 KBytes/device
SWITCHING CAPACITY: 4.8 Gbps non-blocking
POWER REQUIREMENT: 100-240V~50/60Hz, 0.3A
FRAME FILTER RATE: 10BASE-T: 14881 pps/port
FRAME FORWARDING RATE: 100BASE-TX: 148810 pps/port
THROUGHPUT: 3.6 Mpps
DIMENSIONS: 294 x 180 x 44 mm (11.6 x 7.1 x 1.7 in)',6700.00)
insert into  products values ('~/images/AllPRO/SWT_1016A.jpg','~/images/onePRO/SWT_1016A.jpg','Network_Switch','SMC FS801','pr025','SMC’s new EZ Switch™ 
5- and 8-port 
10/100 Mbps desktop switches are dual-speed Fast Ethernet switches that are compact and easy to install
These switches can dramatically improve network performance by offering throughput of up to 200 Mbps per port
A power-saving feature automatically powers down ports to make your network environmentally friendly.','
10/100 Mbps auto-negotiating RJ-45 ports
DC power socket
ETHERNET STANDARD:10BASE-T (IEEE 802.3)
100BASE-TX (IEEE 802.3u)
SWITCHING DATABASE: 2K MAC address entries
SWITCHING CAPACITY :SMCFS501: 1.0 Gbps
SMCFS801: 1.6 Gbps
FEATURES: Supports auto-negotiation for speed (10/100 Mbps) and duplex mode (half/full)
Wire-speed packet filtering and forwarding rate
Store-and-forward architecture filters fragment and CRC error packets',6700.00)

insert into  products values ('~/images/AllPRO/PRINT_7510.jpg','~/images/onePRO/PRINT_7510.jpg','Printers','HP Photosmart 7510 e-All-in-One Printer','pr026','Maximum versatility with print, scan, copy and fax features
printing lab-quality photos and documents','Functions : Print, scan, copy, eFax®, Web
Print speed, black (ISO, laser comparable) : Up to 13.5 ppm
Print speed, color (ISO, laser comparable) : Up to 9 ppm
Print speed, black (draft) : Up to 34 ppm
Print speed, color (draft) : Up to 33 ppm
Print speed, color (draft, 4x6 photo) : As fast as 16 sec
Print speed color (draft, 10x15 photo) : As fast as 16 sec
Print speed, black (normal) : Up to 13.5 ppm
Print speed, color (normal) : Up to 9 ppm',8900.00)
insert into  products values ('~/images/AllPRO/PRINT_1000.jpg','~/images/onePRO/PRINT_1000.jpg','Printers','HP Deskjet 1000 Printer','pr027','Home users who want an affordable, straightforward and easy-to-use printer for everyday documents.','Print speed, black (ISO, laser comparable): Up to 5.5 ppm
Print speed, color (ISO, laser comparable): Up to 4 ppm
Print speed, black (draft): Up to 16 ppm
Print speed, color (draft): Up to 12 ppm
Print speed, black (normal): Up to 5.5 ppm
Print speed, color (normal): Up to 4 ppm
Resolution (black): Up to 600 dpi
Connectivity, standard: 1 USB 2.0
Compatible operating systems: Microsoft® Windows® 7, Windows Vista®, Windows® XP (SP2)* or higher (32-bit only); Mac OS X v 10.5 or v 10.6',3300.00)
insert into  products values ('~/images/AllPRO/PRINT_3510.jpg','~/images/onePRO/PRINT_3510.jpg','Printers','HP Deskjet 3510 e-All-in-One Printer','pr028','Reliable and affordable scanning, copying
and wireless printing from mobile devices','Functions: Print, copy, scan
Print speed, black (ISO, laser comparable): Up to 7.5 ppm
Print speed, color (ISO, laser comparable): Up to 4.5 ppm
Display: 2.0" (5 cm) Hi-Res Mono LCD
Connectivity, standard: 1 USB 2.0; 1 WiFi 802.11b
Ports: 1 USB 2.0
1 WiFi 802.11n
Media sizes supported: Letter, legal, 4 x 6 in, 5 x 7 in, 8 x 10 in, No. 10 envelopes
Media sizes supported : A4; B5; A5; A6; DL envelope
Scanner type: Flatbed
Scan file format: JPEG, TIFF, PDF, BMP, PNG
Scan resolution, hardware: Up to 1200 x 1200 dpi
Scan resolution, optical: Up to 1200 dpi
Scan size (flatbed), maximum: 8.5 x 11.69 in
Copy resolution (black text): Up to 600 x 300 dpi
Copy resolution (colour text and graphics): Up to 600 x 300 dpi',7800.00)
insert into  products values ('~/images/AllPRO/PRINT_1102.jpg','~/images/onePRO/PRINT_1102.jpg','Printers','HP LaserJet Pro P1102w Printer','pr029','Business users with small offices who want an affordable
wireless HP LaserJet printer—one of the most energy-efficient laser printers on the planet.','Print speed
black (normal): Up to 19 ppm
Resolution technology: HP FastRes 600, HP FastRes 1200
Display: None
Processor speed: 266 MHz
Print languages: Host-based printing
Replacement cartridges: HP 85A Black LaserJet Toner Cartridge CE285A (~1600 pages)
Connectivity, standard: 1 Hi-Speed USB 2.0; 1 WiFi 802.11b
Ports: 1 Hi-Speed USB 2.0; 1 WiFi 802.11b
Memory card compatibility: None, 
Memory standard 8 MB, 
Hard disk: None, 
Media sizes supported: A4; A5; A6; B5; postcards; envelopes (C5, DL, B5)',9500.00)

insert into  products values ('~/images/AllPRO/UPS_EA1000.jpg','~/images/onePRO/UPS_EA1000.jpg','UPS','MUST-EA1000','pr030','110/220 VAC, high and low voltage, overload, over-current, short circuit, etc, 
Single Phase','Model Number: EA1000
Phase: Single Phase
Protection: high and low voltage, overload, over-current, short circuit, etc
Weight: upon the model
Output Voltage: 110/220 VAC
Type: Standby
Application: Security / Monitoring / Alarm 
Color: black 
display	: led display 
modified sine wave: yes 
low frequency: yes
AVR CPU	:yes',5500.00)
insert into  products values ('~/images/AllPRO/UPS_EA1100.jpg','~/images/onePRO/UPS_EA1100.jpg','UPS','MUST-EA1100','pr031','Single Phase, high and low voltage, overload, over-current, short circuit, etc.
110/220VAC 
back up time: 25-30 minutes','Model Number: EA1100
Phase: Single Phase
Protection: high and low voltage, overload, over-current, short circuit, etc.
Output Voltage: 110/220VAC
Type: Standby
Application: Computer, Color: black
display: LED 
UPS: PC UPS
wave: modified sinewave
back up time: 25-30 minutes
best quallity: best
OEM: yes 
fast delivery time: yes 
standby ups: yes ',4500.00)
insert into  products values ('~/images/AllPRO/UPS_EH5000.jpg','~/images/onePRO/UPS_EH5000.jpg','UPS','MUST-EH5000','pr032','81-145 VAC / 162-290 VAC
 Single Phase ','Model Number: EH5000
 Phase: Single Phase
 Protection: Overcurrent
 Weight: 13kg-28kg
 Output Voltage: 81-145 VAC / 162-290 VAC
 Type: On-line
 Application: Security / Monitoring / Alarm
 color: black
 display: LCD
 type: tower
 feature 1: double comversion
 feature 2: DSP control
 feature 3: high frequency 
 application: security/monitoring/alarm ',4500.00)
insert into  products values ('~/images/AllPRO/UPS_EA1000.jpg','~/images/onePRO/UPS_EA1000.jpg','UPS','MUST-EH6000','pr033','Single Phase
220VAC input
25 minutes (half load) to 1kva back up time
output voltage: 120/230vac','Model Number: EH6000
Phase: Single Phase
Protection: spikes, brownouts, interference,overload,overcurrent,overvoltage
Output Voltage: 220VAC
Type: On-line
Application: Telecommunications
Color: black / white
wave: pure sine wave 
1kva back up time: 25 minutes (half load)
panel: new LCD panel
panel2: LED optional 
communication interface: RS232,RJ45
sockets: IEC, NEMA, Universal, German optional
output voltage: 120/230vac',6000.00)

insert into products values('~/images/AllPRO/ROU_2540.jpg','~/images/onePRO/ROU_2540.jpg','Routers and ADSL','D Link-Router-2540','pr034','Wireless router 
4-port switch','Brand : D Link 
Model : DIR-615 
Max Download Speed : 24Mbps 
Max Upload Speed : 2Mbps 
No. of Ports : 4 
Weight : 318g 
Antena Qty : 2',6850.00)
insert into products values('~/images/AllPRO/ROU_2520.jpg','~/images/onePRO/ROU_2520.jpg','Routers and ADSL','D Link-Router-2520','pr035','Wireless router 
4-port switch','Brand : D Link 
Model : DSL-2520U 
Max Download Speed : 12Mbps 
Max Upload Speed : 2Mbps 
No. of Ports : 4 
Weight : 318g 
Antena Qty : 1',3150.00)
insert into products values('~/images/AllPRO/ROU_615.jpg','~/images/onePRO/ROU_615.jpg','Routers and ADSL','D Link-Router-615','pr036','Wireless router 
4-port switch','Brand : D Link 
Model : DSL-2540U 
Max Download Speed : 24Mbps 
Max Upload Speed : 2Mbps 
No. of Ports : 4 
Weight : 700g 
Antena Qty : 2',4850.00)

insert into products values('~/images/AllPRO/PRO_LGA155.jpg','~/images/onePRO/PRO_LGA155.jpg','Processors','Intel Core i3-LGA155','pr037','Speed : 3.3Ghz 
Number of Cores : 2 ','Brand : Intel 
Model Core i3 2120 
Speed : 3.3Ghz 
Number of Cores : 2 
Number of threads : 4 
Cache Memory : 3MB 
Instruction Set : 64bit 
Lithography : 32nm silicon chip 
Maximum Wattage : 65W 
Maximum Supported Memory : 32GB DDR3 
Processor Graphics : Available. Intel HD 1000 
Maximum Temperature : 70C 
Turbo Boost : Available. Version 2.0 
Hyper Threading : Available', 12000 )
insert into products values('~/images/AllPRO/PRO_540.jpg','/images/onePRO/PRO_540.jpg','Processors','Intel Core i3-540','pr038','Speed : 3.0Ghz 
Number of Cores : 2 ','Brand : Intel /nModel Core i3 540 
Speed : 3.3Ghz 
Number of Cores : 2 
Number of threads : 4 
Cache Memory : 4MB 
Instruction Set : 64bit 
Lithography : 32nm silicon chip 
Maximum Wattage : 70W 
Maximum Supported Memory : 4GB DDR3 
Processor Graphics : Available. Intel HD 2000 
Maximum Temperature : 70C 
Turbo Boost : Available. Version 2.0 
Hyper Threading : Available', 15000 )
insert into products values('~/images/AllPRO/PRO_ 650.jpg','~/images/onePRO/PRO_ 650.jpg','Processors','Intel Core i5-650','pr039','Speed : 3.5Ghz 
Number of Cores : 4 ','
Brand : Intel 
Model Core i5 650 
Speed : 3.3Ghz 
Number of Cores : 2 
Number of threads : 4 
Cache Memory : 4MB 
Instruction Set : 64bit 
Lithography : 32nm silicon chip 
Maximum Wattage : 80W 
Maximum Supported Memory : 32GB DDR3 
Processor Graphics : Available. Intel HD 2000 
Maximum Temperature : 70C 
Turbo Boost : Available. Version 2.0 
Hyper Threading : Available', 25000 )
insert into products values('~/images/AllPRO/PRO_ 3450.jpg','~/images/onePRO/PRO_ 3450.jpg','Processors','Intel Core i5-3450','pr040','Speed : 3.5Ghz 
Number of Cores : 4 ','Brand : Intel 
Model Core i5 3450 
Speed : 3.3Ghz 
Number of Cores : 2 
Number of threads : 4 
Cache Memory : 3MB 
Instruction Set : 64bit 
Lithography : 22nm silicon chip 
Maximum Wattage : 70W 
Maximum Supported Memory : 32GB DDR3 
Processor Graphics : Available. Intel HD 3000 
Maximum Temperature : 95C 
Turbo Boost : Available. Version 2.0 
Hyper Threading : Available', 35000 )
insert into products values('~/images/AllPRO/PRO_2600.jpg','~/images/onePRO/PRO_2600.jpg','Processors','Intel Core i7-2600','pr041','Speed : 3.6Ghz 
Number of Cores : 4 ','Brand : Intel 
Model Core i7 3770 
Speed : 3.3Ghz 
Number of Cores : 2 
Number of threads : 4 
Cache Memory : 3MB 
Instruction Set : 64bit 
Lithography : 32nm silicon chip 
Maximum Wattage : 90W 
Maximum Supported Memory : 32GB DDR3 
Processor Graphics : Intel HD 3000 
Maximum Temperature : 95C 
Turbo Boost : Available Version 2.0 
 Hyper Threading : Available', 45000 )

insert into products values('~/images/AllPRO/RAM_800.jpg','~/images/onePRO/RAM_800.jpg','RAM','Kingston-RAM-KVR800','pr051','Kingston 
KVR800','Brand : Kingston 
Model : KVR800 
Capacity : 1GB 
Memory Bandwidth : PC8500
Memory Speed : 1066MHz 
Technology : DDR2 
Colck Cycle Time : 8ns',1000.00)
insert into products values('~/images/AllPRO/RAM_1000.jpg','~/images/onePRO/RAM_1000.jpg','RAM','Kingston-RAM-KVR1000','pr042','Kingston 
KVR1000','Brand : Kingston 
Model : KVR1000 
Capacity : 2GB 
Memory Bandwidth : PC8500 
Memory Speed : 1066MHz 
Technology : DDR3 
Colck Cycle Time : 7ns',2000.00)
insert into products values('~/images/AllPRO/RAM_1333.jpg','~/images/onePRO/RAM_1333.jpg','RAM','Kingston-RAM-KVR1333','pr052','Kingston 
KVR1333','Brand : Kingston 
Model : KVR1333 
Capacity : 4GB 
Memory Bandwidth : PC8500
Memory Speed : 1066MHz 
Technology : DDR3 
Colck Cycle Time : 7ns',4000.00)

insert into products values('~/images/AllPRO/VGA_620.jpg','~/images/onePRO/VGA_620.jpg','GPU','nVIDIA-VGA-620','pr044','/n1024MB
GPU speed : 1019MHz','Brand : nVidia 
Model : GT 620 
GPU Speed : 700 
Memory : 1024MB 
Max Resolution : 2560x1600 
Max Refresh Rate : 240Hz 
Min Power : 350W ',6000.00)
insert into products values('~/images/AllPRO/VGA_650.jpg','~/images/onePRO/VGA_650.jpg','GPU','nVIDIA-VGA-650','pr045','/n2048MB  
GPU speed : 1019MHz','
Brand : nVidia 
Model : GTX 650 
GPU Speed : 900 
Memory : 2048MB 
Max Resolution : 2560x1600 
Max Refresh Rate : 240Hz 
Min Power : 400W ',8500.00)
insert into products values('~/images/AllPRO/VGA_660.jpg','~/images/onePRO/VGA_660.jpg','GPU','nVIDIA-VGA-660','pr046','2048MB  
GPU speed : 1019MHz','
Brand : nVidia 
Model : GTX 660 
GPU Speed : 1019
Memory : 3072MB 
Max Resolution : 2560x1600 
Max Refresh Rate : 240Hz 
Min Power : 450W ',12000.00)
insert into products values('~/images/AllPRO/VGA_680.jpg','~/images/onePRO/VGA_680.jpg','GPU','nVIDIA-VGA-680','pr047','4096MB  
GPU speed : 1019MHz','Brand : nVidia 
Model : GTX 680 
GPU Speed : 1058 
Memory : 4096MB
Max Resolution : 2560x1600 
Max Refresh Rate : 240Hz 
Min Power : 550W ',16000.00)

insert into products values('~/images/AllPRO/MB_DG43NB.jpg','~/images/onePRO/MB_DG43NB.jpg','Motherboards','Intel-Motherboard-DG43NB','pr048','Intel Desktop Brand 
G43 Express Chipset 
1333MHz BUS Speed','Brand : Intel 
Model : DG43NB 
Chipset : nG43 Express 
Form factor : ATX 
USB Ports : 12 x USB 
Supported RAM Technology : DDR2 
Supported Max Memory : 4GB 
BUS Speed : 1333MHz 
Dimentions : 1.6 in x 9.6 in /n',12500.00)
insert into products values('~/images/AllPRO/MB_DX58SO.jpg','~/images/onePRO/MB_DX58SO.jpg','Motherboards','Intel-Motherboard-DX58SO','pr049','Intel Desktop Brand 
ICH10 Express Chipset
1333MHz BUS Speed','Brand : Intel 
Model : Extreme DX58SO
Chipset : ICH10 Express
Form factor : ATX
USB Ports : 12 x USB
Supported RAM Technology : DDR3 
Supported Max Memory : 16GB 
BUS Speed : 1333MHz 
Dimentions : 1.6 in x 9.6 in /n',17650.00)
insert into products values('~/images/AllPRO/MB_P7H55.jpg','~/images/onePRO/MB_P7H55.jpg','Motherboards','Intel-Motherboard-P7H55V','pr050','Intel Desktop Brand 
H55 Express Chipset
1333MHz BUS Speed','Brand : Intel 
Model : P7H55V 
Chipset : nH55 Express
Form factor : ATX 
USB Ports : 12 x USB 
Supported RAM Technology : DDR3 
Supported Max Memory : 32GB 
BUS Speed : 1333MHz 
Dimentions : 1.6 in x 9.6 in ',22000.00)





