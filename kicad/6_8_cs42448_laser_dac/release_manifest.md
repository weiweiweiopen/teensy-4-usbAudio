# Release Manifest

Project: `6_8_cs42448_laser_dac`
Target repo: `weiweiweiopen/6-8-CS42448-laser-DAC`
Purpose: starter package for KiCad layout-service handoff

## Deliverables
- KiCad project, schematic, and PCB starter files
- Fabrication folder placeholder for Gerbers and drill outputs
- Assembly BOM and pick/place placeholders
- Connector pinout and functional test templates

## Pre-release checklist
- [ ] Finalize CS42448 digital core schematic
- [ ] Finalize analog output stage topology
- [ ] Confirm connector family, board outline, and mounting pattern
- [ ] Run ERC with only accepted warnings remaining
- [ ] Run DRC with no manufacturing blockers
- [ ] Generate fabrication outputs into `fabrication/gerbers/`
- [ ] Export assembly drawings and pick/place files
- [ ] Update BOM with exact MPNs and DNI flags
- [ ] Fill in `docs/connector_pinout_template.md`
- [ ] Fill in `test/functional_test_procedure.md`

## Revision notes
- R1: initial starter package and service handoff scaffolding
