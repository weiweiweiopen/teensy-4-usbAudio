# Functional Test Procedure

## Equipment
- Bench power supply
- Oscilloscope or audio analyzer
- Known-good Teensy firmware image
- Host PC for control and stimulus

## Bring-up
1. Inspect assembly for polarity, solder bridges, and connector orientation.
2. Apply power with current limit enabled.
3. Verify all primary rails and codec reset state.
4. Confirm I2C communication with the CS42448.

## Audio / output validation
1. Load a test image or waveform pattern on the controller.
2. Verify master clock, bit clock, and frame sync.
3. Confirm expected activity on each populated output channel.
4. Measure DC offset, noise floor, and clipping margin.

## Sign-off record
- Board serial:
- Tester:
- Date:
- Result:
- Notes:
