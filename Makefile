# testvdrive

all:
	echo Targets: copy docs git piplocal pipbuild pipupload

copy:
	cp -au *.py ~/pgbin

docs:
	echo Make docs

clean:
	rm -rf dist
	rm -rf build

piplocal:
	pip install --use-pep517 .

pipbuild:
	./pip-build.py

pipupload:
	./pip-build.py
	./pip-upload.sh

git:
	git add .
	git commit -m AutoCommit
	git push

# EOF