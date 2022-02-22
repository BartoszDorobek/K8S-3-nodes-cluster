# Orkiestracja z Kubernetesem 

1. Utworzenie klastra K8S  
a) Klaster składa się z 3 Node’ów (master + 2 workery)  
b) Klaster wspiera Dockerową implementację kontenerów  
c) plugin do sieciowania Calico  
d) Konfiguracja CLI (command line interface) do k8s - kubectl  

2. Orkiestracja kontenerów na klastrze K8S  
a) Stworzenie deskryptora kontenera (Dockerfile), zbudowanie obrazu oraz  
umieszczenie go w repozytorium obrazów – DockerHub.
b) Obraz zbudowany na bazie systemu Ubuntu  
c) Ekspozycja portów, tak aby możliwe było sprawdzenie działania
serwera w przeglądarce  
d) Konfiguracja serwera w ten sposób, aby po uruchomieniu w
przeglądarce wyświetlała się nazwa zespołu - "SWUS-2"  

3. Stworzenie deskryptora poda w K8S    
a) Pod ma nazwę przykładowych funkcji sieciowej, np. MME  
b) Jako obraz kontenera użyty obraz stworzony w punkcie 2.  
c) Kontener nie ma funkcjonalności funkcji sieciowej, ale posłuży jako
przykład do mechanizmów orkiestracji/skalowania  
d) Uruchomienie poda, a następnie sprawdzenie działania serwera w
przeglądarce, na koniec ręczne skasowanie poda  
e) pod kończy działanie w momencie, gdy wykona wszystkie
zdefiniowane mu zadania.  

4. Stworzenie deskryptora deploymentu w K8S  
a) Nazwa „network”, tak aby deployment imitował opis sieci  
b) 2 kopie (replicas) poda z punktu 3.  
c) 2 kopie innego poda, o dowolnych właściwościach, dowolny
obraz, nazwa powinna odzwierciedlać inną funkcję sieciową, np. UPF  
d) Orkiestracja serwisów bazując na przygotowanym
deskryptorze  
e) Modyfikacja deskryptora tak, aby zawierał po 3 repliki obu
komponentów, a następnie ponowne zastosowanie polecenia
kubectl apply  
f) Sprawdzenie jak pody zostały rozdystrybuowane na Node’ach  
g) Próba ręcznego skasowania dowolnego poda  
