# Projecttitel: Digitale Genesis - Leven creëren vanuit virtuele chemie

Dit project heeft als doel om spontane kunstmatige levensvorming en open-einde-evolutie te simuleren door een kader te ontwikkelen voor het ontwerpen, testen en optimaliseren van kunstmatige chemische regels.

## Wat is kunstmatig leven?

Kunstmatig leven is de studie van levensachtig gedrag dat ontstaat uit kunstmatige systemen in plaats van biologische systemen.  
Net zoals leven op aarde voortkwam uit basischemische processen, streeft kunstmatig leven ernaar systemen te creëren (meestal computersimulaties) waarin levensachtige eigenschappen spontaan ontstaan vanuit eenvoudige regels en componenten.  
Wanneer we het hebben over "levensachtige" eigenschappen, bedoelen we dingen zoals het vermogen om zichzelf te onderhouden en te repareren, zich voort te planten, te evolueren en zich aan te passen aan veranderingen in de omgeving.  
Het belangrijkste is dat deze eigenschappen (zelfonderhoud, reproductie, evolutie) niet direct in het systeem worden geprogrammeerd, maar natuurlijk voortkomen uit de onderliggende regels, net zoals biologisch leven voortkwam uit de basischemie van de vroege aarde.

## Wat is een kunstmatige chemie?

Kunstmatige chemie is een formeel systeem van regels en interacties die al dan niet verband houden met echte chemie.  
Hoewel deze systemen kunnen worden geïnspireerd door echte chemie, hoeft dat niet; ze kunnen volledig willekeurige regels volgen die we zelf bedenken.  
We kunnen dit systeem vervolgens "uitvoeren" om te zien welke patronen en gedragingen voortkomen uit deze regels, ongeacht of ze iets weerspiegelen in de fysieke wereld.  
Dit maakt kunstmatige chemie een krachtig hulpmiddel om abstracte concepten te bestuderen, zoals zelforganisatie, emergentie en evolutie in regelsystemen in het algemeen.  
Er wordt aangenomen dat een kunstmatig chemisch systeem, met voldoende rijke en open-einderegels, mogelijk steeds complexere structuren en gedragingen kan voortbrengen die kenmerken weerspiegelen die we met leven associëren.

## Mogelijke regels en hun formalisatie

Om een kunstmatig chemisch systeem te creëren dat mogelijk levensachtige gedragingen kan voortbrengen, moeten we een uitgebreide reeks regels definiëren die bepalen hoe componenten met elkaar omgaan.  
Deze regels moeten nauwkeurig genoeg zijn om computationeel geïmplementeerd te worden, terwijl ze complexe gedragingen mogelijk maken.  
Hieronder staan de belangrijkste categorieën regels die de basis kunnen vormen van een dergelijk systeem.

### 1. **Atomen en Bindingen**
   - **Definieer Atomen als Gegevensstructuren:** Elk "atoom" kan een gegevensstructuur zijn met eigenschappen zoals:
     - Identiteit ($A, B, C, \dots$).
     - Valentie (aantal bindingen dat het kan vormen, bijv. 1, 2, 3).
     - Bindingsterkte (energie die nodig is om het te breken).
     - Reactiviteit (kans op deelname aan reacties).
   - **Definieer Bindingen als Verbindingen:** Bindingen worden gedefinieerd door relaties tussen atomen:
     - $A \leftrightarrow B$ geeft een binding aan tussen $A$ en $B$.
     - Sla de bindingsterkte en het type op (bijv. enkelvoudig, dubbel, etc.).

---

### 2. **Energiewetten**
   - **Energieniveaus:**
     - Ken elk atoom of molecuul een energiewaarde toe.
     - Definieer energiewijzigingen ($\Delta E$) voor het vormen of verbreken van bindingen.
   - **Reactievoorwaarden:** Een reactie vindt plaats als het systeem voldoende energie heeft om bindingen te verbreken en als de reactie energetisch gunstig is:
     $$
     \Delta E = E_{\text{break}} - E_{\text{form}}
     $$
     Als $\Delta E < 0$, vindt de reactie spontaan plaats.
   - **Formalisatie:**
     - $\text{Als } E_{\text{input}} \geq E_{\text{break}}, \text{ kunnen bindingen breken.}$
     - $\text{Als } \Delta E \leq 0, \text{ zijn de producten stabieler en gaat de reactie door.}$

---

### 3. **Reactieregels**
   - **Botsing-gebaseerde interacties:**
     - Reacties vinden plaats wanneer "atomen" of "moleculen" botsen.
     - Definieer kansen dat botsingen leiden tot reacties, afhankelijk van parameters zoals temperatuur of concentratie.
   - **Reactiepadways:**
     - Gebruik regels zoals $A + B \rightarrow C$ of $A + BC \rightarrow AB + C$.
   - **Formalisatie:**
     - $\text{Reactanten } R_1 + R_2 \text{ vormen producten als } E_{\text{botsing}} \geq \text{drempel.}$
     - Definieer een lookup-tabel met mogelijke reactie-uitkomsten voor elk paar reactanten.

---

### 4. **Behoudswetten**
   - **Behoud van Massa:** Het totale aantal atomen blijft constant tijdens een reactie.
     $$
     \text{Som van input} = \text{Som van output.}
     $$
   - **Behoud van Energie:** Energie wordt behouden tijdens reacties. Definieer of energieveranderingen resulteren in warmte, licht of andere outputs.
   - **Formalisatie:** Houd alle atomen en energie-eenheden vóór en na reacties bij.

---

### 5. **Stabiliteit en Verval**
   - **Molecuulstabiliteit:** Definieer "stabiele" configuraties waarbij bindingen sterk zijn en energie wordt geminimaliseerd.
   - **Spontaan Verval:** Instabiele moleculen kunnen willekeurig in de tijd uiteenvallen.
     - Voeg een tijdsafhankelijke regel toe waarbij bindingen met een lage stabiliteitskans breken na een willekeurige duur.
   - **Formalisatie:** Ken elk molecuul een stabiliteitsscore toe. Als $\text{score} < \text{drempel}, \text{ vindt verval plaats.}$

---

### 6. **Katalysatoren en Remmers**
   - **Katalysatoren:** Definieer speciale "atomen" of "moleculen" die energiebarrières verlagen zonder zelf verbruikt te worden.
     - $\text{Als Katalysator K aanwezig is, dan } E_{\text{vereist}} = E_{\text{break}} / 2.$
   - **Remmers:** Voorkomen reacties door reactanten te stabiliseren of energiebarrières te verhogen.
     - $\text{Als Remmer I aanwezig is, dan } E_{\text{vereist}} = E_{\text{break}} \times 2.$

---

### 7. **Omgeving en Externe Energiebronnen**
   - **Temperatuur:** Beïnvloedt de kinetische energie van moleculen.
     $$
     \text{Hogere temperatuur } \rightarrow \text{vaker botsingen, meer reacties.}
     $$
   - **Licht/Elektriciteit:** Voeg regels toe waarbij externe energiebronnen activeringsenergie leveren.
     - $\text{Als fotonenergie } \geq \text{bindingsenergie, breken bindingen.}$

---

### 8. **Formele Representatie en Computatie**
   - Representaties van reacties als grafen:
     - Atomen = Knopen.
     - Bindingen = Randen.
   - Gebruik computationele regels zoals cellulaire automaten of stochastische simulaties om het systeem te laten evolueren.
   - Definieer tijdstappen voor elke interactie om voortgang te simuleren.

---

### 9. **Programmeerbare Regelsets**
   - Sta toe dat regels evolueren of zich aanpassen op basis van feedback (bijv. mutatie van reactiepadways).
   - Introduceer willekeurigheid om real-world variabiliteit in chemische reacties te simuleren.

---

### Voorbeeld: Eenvoudige Regelset voor Kunstmatige Chemie
1. Definieer Atomen: $A (\text{valentie}=1), B (\text{valentie}=2), C (\text{valentie}=1)$.
2. Definieer Bindingen:
   - $A \leftrightarrow B$: Sterke binding, vereist 10 energiewaarden om te breken.
   - $B \leftrightarrow C$: Zwakke binding, vereist 5 energiewaarden om te breken.
3. Definieer Reacties:
   - $A + B \rightarrow AB$ (exotherm, geeft 5 energiewaarden af).
   - $AB + C \rightarrow ABC$ (vereist 3 energiewaarden).
4. Stabiliteitsregel:
   - $ABC$ is stabiel en vervalt niet spontaan.

## Bemonstering van kunstmatige chemische regelsets

Door deze aanpak van kunstmatige chemie te hanteren, bestaat er een oneindige ruimte van mogelijke regelsets die verschillende kunstmatige chemische systemen kunnen definiëren.  
Door systematisch regelsets te genereren en te simuleren en kenmerken te analyseren zoals reactiecirkels, molecuuldiversiteit en energieflux, kun je het enorme landschap van kunstmatige chemieën verkennen en die met emergente, "interessante" eigenschappen identificeren.  
Het richten op cycli is een sterke start, aangezien deze vaak leiden tot duurzame en complexe gedragingen die lijken op biologische systemen.  
Om de uitgebreide regelruimte te verkennen, hebben we een strategie nodig om regelsets te genereren, te bemonsteren en te evalueren:

### **a) Regelgeneratie**
- **Definitie van parameter-ruimte:**
  Definieer een geparametriseerde ruimte voor je kunstmatige chemische regels, bijvoorbeeld:
  - Aantal atoomtypes ($A, B, C$).
  - Limieten voor valentie (bijv. maximale bindingen die een atoom kan vormen).
  - Bindingsterktes en energievereisten.
  - Reactietypes (bijv. binaire botsingen, katalysatorgestuurde reacties, etc.).
- **Stochastische regelcreatie:**
  Genereer regelsets willekeurig binnen deze geparametriseerde ruimte:
  - Wijs willekeurig bindingsterktes en vorm-/breekregels toe.
  - Wijs willekeurig reactiepadways toe (bijv. $A + B \rightarrow C, C \rightarrow A + D$).
  - Randomiseer beginvoorwaarden (molecuulpopulaties, energieniveaus).

---

### **b) Bemonsteringsstrategieën**
1. **Willekeurige bemonstering:**  
   Selecteer regelsets uniform uit de parameter-ruimte.
2. **Gerichte bemonstering:**  
   Stuur de bemonstering naar parameterranges die waarschijnlijk "interessante" uitkomsten opleveren, bijvoorbeeld:
   - Gemiddelde energiedrempels (om triviale of onmogelijke reacties te vermijden).
   - Valenties die complexiteit toestaan (bijv. niet alle atomen met valentie 1).
3. **Evolutionaire algoritmes:**  
   Gebruik genetische algoritmes om regelsets te evolueren richting vooraf gedefinieerde criteria (bijv. hogere complexiteit of cyclische reacties).

---

## Selectiecriteria voor "interessante" regelsets

Bij het evalueren van kunstmatige chemische regelsets hebben we criteria nodig om te bepalen welke het meest waarschijnlijk leiden tot interessante emergente gedragingen en mogelijk kunstmatig leven.  
Belangrijke indicatoren zijn het vermogen van het systeem om in de loop van de tijd toenemende complexiteit te genereren, zelforganiserende structuren te ondersteunen en evolutie mogelijk te maken door overerving en variatie.  
We moeten zoeken naar regelsets die stabiele maar flexibele moleculaire structuren ondersteunen, cyclische reactiepatronen die metabole processen kunnen ondersteunen, en het potentieel voor informatieopslag en -overdracht tussen componenten.  
De aanwezigheid van autocatalytische cycli, waarbij producten van reacties hun eigen productie katalyseren, is bijzonder veelbelovend omdat het kernkenmerken van biologische systemen nabootst.

### **a) Reactiecirkels**
- **Waarom zijn ze interessant?**
  Cirkels suggereren **zelfonderhoudende reactienetwerken** die de basis kunnen vormen voor emergente gedragingen, zoals autocatalyse of metabole processen.
- **Detectie:**
  - Representaties van reacties als een gerichte graaf:
    - Knopen = moleculen.
    - Randen = reacties (gericht van reactanten naar producten).
  - Gebruik graafalgoritmen om cirkels te detecteren (bijv. Tarjan's algoritme voor sterk verbonden componenten).
- **Voorbeeldmetriek:**
  Aantal, grootte en complexiteit van cirkels in het reactienetwerk.

---

### **b) Moleculaire diversiteit**
- **Waarom is het interessant?**
  Systemen die een grote verscheidenheid aan moleculen genereren, vertonen meestal rijkere emergente gedragingen.
- **Metriek:**
  Tel unieke moleculen die tijdens een simulatie worden gevormd.
- **Detectie:**
  Voer simulaties uit met een kleine set initiële moleculen en meet hoeveel verschillende producten worden gevormd.

---

### **c) Energieflux en efficiëntie**
- **Waarom is het interessant?**
  Systemen met efficiënte energiebenutting of emergente energiebesparing lijken op echte metabole systemen.
- **Metriek:**
  - Meet vrijgekomen energie versus vereiste energie in het systeem.
  - Zoek naar zelfregulerende energiecycli.

---

### **d) Zelfonderhoudende netwerken**
- **Waarom is het interessant?**
  Systemen die langdurig activiteit behouden (zonder externe input) zijn analoog aan levende systemen.
- **Metriek:**
  Meet tijd tot verval (hoe lang het systeem blijft reageren zonder energie-injectie).

---

### **e) Emergent gedrag**
- **Waarom is het interessant?**
  Complexiteit die spontaan ontstaat, zoals hiërarchische reactienetwerken of replicatieachtige processen, kan analogen zijn van leven of andere natuurlijke systemen.
- **Metriek:**
  - Detecteer herhalende patronen in reactiegrafen.
  - Groei in moleculaire complexiteit (bijv. toenemende molecuulgrootte in de tijd).

---

### **f) Systeemcomplexiteit**
- **Waarom is het interessant?**
  Hoge complexiteit leidt vaak tot emergente gedragingen die moeilijk te voorspellen zijn.
- **Metriek:**
  Gebruik maten zoals Shannon-entropie op de reactiegraaf of populatiedynamica van moleculen.

---

## **Detecteren van interessante regelsets**

1. **Genereer regelsets:**
   - Gebruik willekeurige, gerichte of evolutionaire bemonsteringsmethoden om kandidaat-regelsets te creëren.

2. **Simuleer reactie-dynamiek:**
   - Initieer voor elke regelset een systeem met enkele beginnende moleculen.
   - Voer simulaties uit voor een vast aantal stappen of totdat het systeem stabiliseert.

3. **Bouw een reactiegraaf:**
   - Registreer alle plaatsgevonden reacties.
   - Creëer een gerichte graaf waarin:
     - Knopen = unieke moleculen.
     - Randen = reacties die een molecuul omzetten in een ander.

4. **Analyseer "interessantheid":**
   - Gebruik vooraf gedefinieerde meetwaarden om elk systeem te evalueren:
     - Aantal/complexiteit van cirkels in de reactiegraaf.
     - Diversiteit van gevormde moleculen.
     - Energie-efficiëntie en -flux.
     - Tijd tot verval.
   - Beoordeel elk systeem op basis van deze meetwaarden.

5. **Itereer en verfijn:**
   - Richt de bemonstering op veelbelovende delen van de regelruimte (bijv. regelsets die veel cirkels opleveren).
   - Gebruik machine learning-modellen om interessante regelsets te voorspellen op basis van waargenomen patronen.

---

### Voorbeeld metriekcombinatie voor reactiecirkels

Als je je richt op reactiecirkels, kan je scoringsfunctie er bijvoorbeeld zo uitzien:
$$
\text{Score} = w_1 \cdot C + w_2 \cdot D + w_3 \cdot T
$$
Waarbij:
- $C$: Aantal cirkels in de reactiegraaf.
- $D$: Diversiteit van unieke moleculen.
- $T$: Tijd tot verval of stabilisatie.
- $w_1, w_2, w_3$: Gewichten die het belang van elke factor weerspiegelen.
