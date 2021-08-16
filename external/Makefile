DATADIRS = mmcif_biosync  mmcif_ccp4 mmcif_em  mmcif_img mmcif_ndb_ntc mmcif_nef  mmcif_sas mmcif_nmr-star mmcif_std mmcif_sym 

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
