# O pliku graph.txt
### Jest to plik w którym znajduje się graf  
### Wierzchołki grafu nazywane są kolejnymi dużymi literami alfabetu.  
### W pierwszej linii pliku znajduje się liczba wierzchołków.  
### Pozostałe linie reprezentują wierzchołki. W tych liniach:  
-Pierwsza liczba jest liczbą krawędzi wychodzących z danego wierzchołka  
-Następnie występują parami wierzchołek, do którego wchodzi krawędź i waga tej krawędzi  
-Pierwsza taka linia reprezentuje źródło, a ostatnia ujście  
### Przykład 
```
6    
2 B 16 C 13     
2 C 10 D 12  
2 B 4 E 14  
2 C 9 F 20  
2 D 7 F 4  
0  
```  
# Jak uruchomić?  
## VSCode  
### Należy stworzyć folder build, a w tym folderze folder src. Następnie należy przenieść plik graph.txt do build/src/. Później należy przejść do build/ i wpisać w terminalu  
```
cmake ../
make
make run_grafy
```
# Zastosowania algorytmu Forda-Fulkersona
Algorytm Forda-Fulkersona pozwala na obliczenie maksymalnego przepływu w sieci.  
Znajduje swoje zastosowanie w:  
-komunikacji miejskiej i transporcie  
-liniach lotniczych  
-różnych programach komputerowych
