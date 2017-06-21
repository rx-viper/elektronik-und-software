## Electronics and SW Remarks form CDR discussion

* some double sentences and inconsistent sentences in SED
* some tbds inside SED
* some figures bottom lines are overlapping page numbers
* positioning of PCBs -> screw holes bulkhead
* we have to build boxes for every PCB, shielding very important
* no cables trough cupola wall - we need a vacuum approved connector
* RXSM connector has to be easily reachable and vertical oriented
* Simon: good schematics, could not find an error
* camera cables have to be as short as possible and shielded very well -> connect shielding to structure parts, not to PCBs GND
* some push buttons do wired things on rocket starts, select very careful
* filter motor control
* consider to use a save / arm plug for heaters
* onboard: RS-422; ground station: Rs-232
* STM should be able to check the camera status
* consider to start high frequency sampling before LO to be able to check it
* (software) test mode has to deal with LO - we will perform a full flight test at Esrange
* maybe send one timestamp at beginning and one at the end -> calculate timestamps later
* revise verification matrix software part
* batteries have to perform vacuum and vibration test
* calculate final number and power of batteries and add to SED
* batteries are a safety risk
* transportation of batteries from Esrange back is complicated
* consider check for late access status (lift mechanism really closed?)
* Esrange has a freezer for -80 deg - consider dry ice for transport, we will not be able to use our own sensors in freezer
* consider to change timeline to have more time for tests before LO
* what do we want to do in cold, what in hot CD tests?
* think about recovery -> anything special?
* error handling (flowcharts) for electrical / sw problems short before LO
* do electronics checks after switch to internal power
* for maximum packet size have a look at user manual
