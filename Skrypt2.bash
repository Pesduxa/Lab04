case $1 in
    -d|--date)
        echo "Dzisiaj jest: $(date)"
        ;;
    -l|--logs)
        count=${2:-100}
        for i in $(seq 1 $count); do
            echo "log$i.txt" > log$i.txt
            echo "Nazwa skryptu: skrypt.sh" >> log$i.txt
            echo "Data utworzenia: $(date)" >> log$i.txt
        done
        ;;
    -h|--help)
        echo "Dostępne opcje:"
        echo "--date, -d        Wyświetla dzisiejszą datę"
        echo "--logs [n], -l [n]    Tworzy [n] plików logx.txt (domyślnie 100)"
        echo "--help, -h        Wyświetla pomoc"
        ;;
esac
count=${1:-100}
for i in $(seq 1 $count); do
    mkdir -p error$i
    echo "error$i/error$i.txt" > error$i/error$i.txt
    echo "Nazwa skryptu: skrypt.sh" >> error$i/error$i.txt
    echo "Data utworzenia: $(date)" >> error$i/error$i.txt
done
echo "*error*" >> .gitignore
