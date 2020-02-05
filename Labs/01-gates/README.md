## Gates
| **A** | **NOT** |
| :-: | :-: |
| 0 | 1 |
| 1 | 0 |

| **A** | **B** | **AND** | **NAND** |
| :-: | :-: | :-: | :-: |
| 0 | 1 | 0 | 1 |
| 0 | 0 | 0 | 1 |
| 1 | 1 | 1 | 0 |
| 1 | 0 | 0 | 1 |

| **A** | **B** | **OR** | **NOR** |
| :-: | :-: | :-: | :-: |
| 0 | 1 | 1 | 0 |
| 0 | 0 | 0 | 1 |
| 1 | 1 | 1 | 0 |
| 1 | 0 | 1 | 0 |

| **A** | **B** | **XOR** | **XNOR** |
| :-: | :-: | :-: | :-: |
| 0 | 1 | 1 | 0 |
| 0 | 0 | 0 | 1 |
| 1 | 1 | 0 | 1 |
| 1 | 0 | 1 | 0 |

![image](and_or_xor_not.png)

## De Morgan's law

| **A** | **B** | **C** | ![](https://latex.codecogs.com/gif.latex?f) | ![](https://latex.codecogs.com/gif.latex?f_A_N_D) | ![](https://latex.codecogs.com/gif.latex?f_O_R) |
| :-: | :-: | :-: | :-: | :-: | :-: |
| 0 | 0 | 0 | 1 | 1 | 1 |
| 0 | 0 | 1 | 0 | 0 | 0 |
| 0 | 1 | 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 0 | 0 | 0 |
| 1 | 0 | 0 | 1 | 1 | 1 |
| 1 | 0 | 1 | 1 | 1 | 1 |
| 1 | 1 | 0 | 0 | 0 | 0 |
| 1 | 1 | 1 | 0 | 0 | 0 |

![](https://latex.codecogs.com/gif.latex?f%3Da%5Ccdot%20%5Coverline%7Bb%7D%20&plus;%20%5Coverline%7Bb%7D%5Ccdot%20%5Coverline%7Bc%7D) \
![](https://latex.codecogs.com/gif.latex?f_A_N_D%3D%5Coverline%7B%5Coverline%7B%5Coverline%7Ba%7D%5Ccdot%20b%7D%20%5Ccdot%20%5Coverline%7Bb%5Ccdot%20c%7D%7D) \
![](https://latex.codecogs.com/gif.latex?f_O_R%3D%5Coverline%7B%5Coverline%7Ba%7D%20&plus;%20b%7D%20&plus;%20%5Coverline%7Bb%20&plus;%20c%7D)

| ![](de_morgan_f.png) | ![](de_morgan_f_and.png) | ![](de_morgan_f_or.png) |
| :-: | :-: | :-: |
