DATADIRS = mmcif_nmr-star mmcif_sas mmcif_biosync mmcif_ccp4 mmcif_img mmcif_rcsb_nmr mmcif_rcsb_xray mmcif_sym  mmcif_nef mmcif_ndb_ntc

all:	compile 

clean_build: clean

compile:
	@mkdir -p dist
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
