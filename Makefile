
build:
	cmake --version
	mkdir -p src/build
	cd src/build && cmake -D spoa_optimize_for_portability=ON -DCMAKE_BUILD_TYPE=Release -D CMAKE_CXX_FLAGS="-I ../vendor/cereal/include/ -fPIC" .. && make
	python3 setup.py develop

test: build
	python3 tests/test_pyspoa.py

clean:
	rm -rf src/build build tmp *~
