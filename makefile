compilar:limpiar
	mkdir bin
	find src -name *.java | xargs javac -cp bin -d bin	
ejecutar:compilar
	java -cp bin dominio.principal
limpiar:
	rm -rf bin
jar:compilar
	jar cvfm Juegodelavida.jar Manifest.txt -C bin .
