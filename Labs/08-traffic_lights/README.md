## Task 08 - Traffic light

### Example of definition of new data type
```
	type state_type is (g_r, y_r, r_r, r_g, r_y, r_r2);
	signal state:	state_type;
```
### State diagram
![SD](.png) TODO

### Simulation of traffic lights controller(40ns=1s)
![isim](isim.jpg)

