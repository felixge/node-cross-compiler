ardrone2:
	./plattforms/ardrone2.sh

clean:
	cd node && git clean -fdX
	rm -rf build

.PHONY: ardrone2 clean
