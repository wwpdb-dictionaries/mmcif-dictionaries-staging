DATADIRS = mmcif_rcsb_nmr mmcif_rcsb_xray

all:	compile 

clean_build: clean

compile:
	@mkdir -p ../dist
	@for datadir in $(DATADIRS); do \
		echo " "; \
		echo "------------------------------------------------------------"; \
		echo "**** Making $$datadir ****"; \
		echo "------------------------------------------------------------"; \
		(cd dict-$$datadir && make ) || exit 1; \
	done

clean:
	@for datadir in $(DATADIRS); do \
		echo cleaning $$datadir; \
		(cd dict-$$datadir && make clean) || exit 1; \
	done
