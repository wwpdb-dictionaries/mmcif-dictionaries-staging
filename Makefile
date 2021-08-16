SUBDIRS=wwpdb_internal external

all:	compile 

clean_build: clean

compile:
	@mkdir -p dist
	@for subdir in $(SUBDIRS); do \
		echo " "; \
		echo "------------------------------------------------------------"; \
		echo "**** Making in $$subdir ****"; \
		echo "------------------------------------------------------------"; \
		(cd $$subdir && make ) || exit 1; \
	done

clean:
	@for subdir in $(SUBDIRS); do \
		echo cleaning $$subdir; \
		(cd $$subdir && make clean) || exit 1; \
	done
