.POSIX:
DESTDIR = ~/.local
.PHONY: install uninstall
install:
	@chmod 755 bashpad
	@mkdir -vp ${DESTDIR}/bin
	@mkdir -vp ${DESTDIR}/share/bashpad/sounds
	@cp -vf bashpad ${DESTDIR}/bin
	@echo Installation finished, probably.
uninstall:
	@rm -vf ${DESTDIR}/bin/bashpad
	@rm -vr ${DESDIR}/share/bashpad
	@echo Done (done?) uninstalling.
