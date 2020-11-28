.POSIX:
DESTDIR=~/.local
.PHONY: install uninstall
install:
	@chmod 755 shellpad
	@chmod 755 sounds
	@mkdir -vp ${DESTDIR}/bin
	@mkdir -vp ${DESTDIR}/share/shellpad
	@cp -vr sounds ${DESTDIR}/share/shellpad/
	@cp -vf shellpad ${DESTDIR}/bin
	@echo Installation finished, probably.
uninstall:
	@rm -vf ${DESTDIR}/bin/shellpad
	@rm -vr ${DESTDIR}/share/shellpad
	@echo Done (done?) uninstalling.
