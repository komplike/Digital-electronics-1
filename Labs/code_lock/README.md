# Kódový zámok
## Digitálna elektronika 1 -  Projekt


### Zadanie
Kódový zámek s maticovou klávesnicí 4x3, časovým limitem pro zadání správného pinu a signalizací chybného pokusu.  

### Rozbor zadania
Kódový zámok bude predstavovať FSM automat ako hlavný riadiaci proces.  
Maticová klávesnica je v prípade expanznej CPLD dosky v podobe tlačidiel(veľkosti 4x3).  
Časový limit pre zadanie správneho PINu je realizovateľné pomocou čítača s určenou maximálnou hodnotou.  
Signalizácia chybného pokusu pomocou červenej LED diódy.  

####  Rozšírenie
Možnosť zmeny PIN kódu za behu programu relaizovateľná pomocou logických vektorov.  
Signalizácia správneho zadania PIN kódu pomocou zelenej LED diódy.  

#####  Možné ďalšie neimplementované rozšírenia:
<small>Prepojenie s displejom pre zobrazovanie  skrytého \****  PIN kódu.  
Možnosť zmazania znaku pri zadávaní PIN kódu.  </small>

### Implementácia
Projekt je rozdelený do troch modulov (entít)
- counter
- locker
- top

Modul **counter** - čítač obsahuje dva procesy
- *counter* -- čítač používaný ako časový limit pre zadanie PIN kódu
- *counter_led* -- čítač určujúci trvanie LED signalizácie

Modul **locker** - zámok  sprostredkuje proces stavového automatu.
  
  Modul **top** zabezpečuje spracvanie vstupných a výstupných signálov ako aj rozhranie entitám *counter* a *locker*. Obsahuje

-  *btn_decoder* - dekóder vstupu

	&nbsp; &nbsp; &nbsp; dekóduje stlačenie tlačidla ako nábežnú hranu signálu a ukladá do 4-bitového vektoru informáciu o stlačenom tlačidle
-  *led_decoder* - dekóder na výstupe

	&nbsp; &nbsp; &nbsp; dekóduje vektor s informáciou o aktivácii LED diódy na výstupné signály

#### RTL schéma
![RTL schéma](images/RTL_scheme.png)

### Simulácie
#### Modul **counter**
> nulovanie čítača po deaktivácii signálu *_en_i , impulz na výstupe, po dosiahnutí MAX hodnoty čítača
![simulácia modulu counter](images/sim_counter.png)

#### Modul **locker** 
> signalizácia spustenia čítača po stlačení tlačidla, LED(zelená/červená) signalizácia úspešnosti na výstup
![simulácia modulu locker](images/sim_locker_10.png)

> nastavenie nového PINu a testovanie jeho správnosti
![simulácia modulu locker](images/sim_locker_set1.png)

> LED signalizácia po vypršaní času na zadanie PINu
![simulácia modulu locker](images/sim_locker_cnt1.png)

#### Modul **top** 
> zadanie predvoleného PINu 0000 a následná LED(zelená) signalizácia na výstupe
![simulácia modulu top](images/sim_top_default.png)

> zadanie nesprávneho PINu 1234 a následná LED(červená) signalizácia na výstupe
![simulácia modulu top](images/sim_top_fail.png)

> nastavenie nového PINu 1234  a následná LED(zelená) signalizácia na výstupe
![simulácia modulu top](images/sim_top_set.png)

> zadanie nového PINu 1234 a následná LED(zelená) signalizácia na výstupe
![simulácia modulu top](images/sim_top_newcode.png)

