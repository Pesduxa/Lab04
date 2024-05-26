echo "Dzisiaj jest: $(date)"
echo "*log*" > .gitignore
for i in {1..100}; do
    echo "log$i.txt" > log$i.txt
    echo "Nazwa skryptu: skrypt.sh" >> log$i.txt
    echo "Data utworzenia: $(date)" >> log$i.txt
done
count=${1:-100}
for i in $(seq 1 $count); do
    echo "log$i.txt" > log$i.txt
    echo "Nazwa skryptu: skrypt.sh" >> log$i.txt
    echo "Data utworzenia: $(date)" >> log$i.txt
done
echo "Dostępne opcje:"
echo "--date        Wyświetla dzisiejszą datę"
echo "--logs [n]    Tworzy [n] plików logx.txt (domyślnie 100)"
echo "--help        Wyświetla pomoc"
