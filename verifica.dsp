//per sintesi sottrativa si fa rimento  ad modello di sinetsi sonora ancora uitilizzata nella musica elettronica che si occupa del processo di creazione del suono e si  divide in tre aspetti:
// spettrogramma, sonogramma e forma d'onda.
// questo processo si applica attraverso le sorgenti sonore coovvero gli elemnti che generano il suono come i filtri, amplificatori.
// filtri sono gli oggeti di base epr la sintesi:
//filtro passaalto= fi.highpas
//filtro passabasso=fi.lowpass
// Nello spettrogramma l'ampiezzza si muove sul dominio della frquenza.
//lo spettrogramma è una rappresentazione grafica del suono che si basa su effettive misurazioni del suono in funzione 
//delle variabili.
//nel sonogramma la frequenza si muove sul dominio del tempo.
//l sonogramma è una registrazione grafica fornita dal sonografo.
//nella forma d'onda ogni punto è osservabile sul dominio temporale., è la rapprsentazione grafica do un segnale, ampiezza e tempo.
//Prima di process va sempre scritto fcut e order
//ogni riga deve terminare con ;
// Elementi:
//no.noise=rumore
//fcut=frequenza di taglio 
//vslider= primo modello di pomello 
//i valori numerici di vlisder sono:
//valore di inizializzaione
//alore minimo 
//valore massimo
//step=precisione
//order=ordine ;più aumenta l'ordine più il filtro è verticale,più l'ordine abbassa più il filtro è normale.
//gain=regola il volume
//style knob= fa diventare il primo modello di pomello normale ad un pomello circolare
//scale exp pomello esponenziale
//white noise=rumore bianco che ha tutte le frequenze e tutte le ampiezze(rettangolo completamente colorato),rumore banda larga.
//strumento che permette la visione completa delle cose è il microscopio
//analisi di un corpo ossia l'analisi della struttura molecolare



import ("stdfaust.lib");
fcut=vslider("[01] cut-off [scale:exp][style:knob]", 1000,20,20000,1) ;
order=128;
//                       init min max step
gain=vslider("[02] gain", -20, -96, 0, 0.1) : ba.db2linear ;
process=fi.lowpass(order,fcut) : fi.highpass(order,fcut) : *(gain) ;


