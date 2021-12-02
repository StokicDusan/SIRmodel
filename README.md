[![Contributors][contributors-shield]][contributors-url]
[![Commit-activity][commit-activity-shield]][commit-activity-url]
[![Issues][issues-shield]][issues-url]
[![Repo-size][repo-size-shield]][repo-size-url]
[![License][license-shield]][license-url]  
[![Forks][forks-shield]][forks-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

# Welcome to SIRmodel
Octave SIR model simulation for spread of disease

## What does the script do?
Script calculates relevant values and plots figures.

## Installing the dependencies
This script requires signal package. To install the packages, in octave execute:
```bash
$ pkg install -forge signal
```
## How to use it
#### 1. Clone this repository:
```bash
$ git clone https://github.com/StokicDusan/SIRmodel.git
$ cd SIRmodel/
```
#### 2. Launch:
In the command line simply invoke the script with:
```bash
$ octave --persist SIR.m
$ octave --persist SIR-mi.m
```

## Examples
The following code block shows an example of calling SIR.m and SIR-mi.m scripts from terminal explained in the launch section.
```octave
% SIR.m
maxI =  0.24107
Tstar =  85
Rinf =  0.89911
Peaks of prevalence by days are:
    0.24107
   85.00000

```

```octave
% SIR-mi.m
maxI =  0.23612
Tstar =  87
Rinf =  0.56549
Peaks of prevalence by days are:
      0.236122      0.049804      0.027671      0.022386      0.020844      0.020363      0.020209
     87.000000    405.000000    686.000000    965.000000   1244.000000   1523.000000   1802.000000

```
Descriptions of values shown in code blocks above are given below.

|Variables | Description |
|:---------------|:-----:|
|N	| The total population at the begining of the simulation |
|maxI	| Infected population at the peak of the epidemic normalized by N |
|Tstar	| Time where the epidemic reaches its peak in days |
|Rinf	| Removed population after the epidemic normalized by N |

Apart form outputs to the terminal the scripts plot figures. All four figures calling SIR.m script are given below:

<img src="/assets/SIR-figure-1.png" width="45%" height="45%" /> <img src="/assets/SIR-figure-2.png" width="45%" height="45%" />
<img src="/assets/SIR-figure-3.png" width="45%" height="45%" /> <img src="/assets/SIR-figure-4.png" width="45%" height="45%" />

## Provide Feedback 👍

If you encounter any bugs or have suggestions, please file an issue in the
[Issues][issues-url]
section of the project.

[contributors-shield]: https://img.shields.io/github/contributors/StokicDusan/SIRmodel
[contributors-url]: https://github.com/StokicDusan/SIRmodel/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/StokicDusan/SIRmodel?style=social
[forks-url]: https://github.com/StokicDusan/SIRmodel/network/members
[issues-shield]: https://img.shields.io/github/issues/StokicDusan/SIRmodel
[issues-url]: https://github.com/StokicDusan/SIRmodel/issues
[commit-activity-shield]: https://img.shields.io/github/last-commit/StokicDusan/SIRmodel
[commit-activity-url]: https://github.com/StokicDusan/SIRmodel/graphs/commit-activity
[license-url]: https://github.com/StokicDusan/SIRmodel/blob/main/LICENSE
[license-shield]: https://img.shields.io/github/license/StokicDusan/SIRmodel
[repo-size-shield]: https://img.shields.io/github/repo-size/StokicDusan/SIRmodel
[repo-size-url]: https://img.shields.io/github/repo-size/StokicDusan/SIRmodel
[linkedin-shield]: https://img.shields.io/badge/LinkedIn-0077B5?style=plastice&logo=linkedin&logoColor=white
[linkedin-url]: https://linkedin.com/in/stokicdusan
