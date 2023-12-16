.DEFAULT_GOAL := panelize

.PHONY: panelize
panelize: mfk5-panelized.kicad_pcb

.PHONY: clean
clean:
	$(RM) mfk5-panelized.kicad_*

mfk5-panelized.kicad_pcb: mfk5.kicad_pcb mfk5.kikit.json
	bin/kikit.sh panelize -p mfk5.kikit.json mfk5.kicad_pcb "$@"
