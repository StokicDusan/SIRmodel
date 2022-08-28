[![Commit-activity][commit-activity-shield]][commit-activity-url]
[![Issues][issues-shield]][issues-url]
[![Repo-size][repo-size-shield]][repo-size-url]
[![License][license-shield]][license-url]  
[![Forks][forks-shield]][forks-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

# Welcome to SIRmodel
In this repo we consider the [SIR model][sir-model-url] simulating the spread of disease in Octave.  
The name SIR comes from the three epidemiological population classes we are considering:
 - S &#8212; Susceptible are healthy individuals which can be infected in the future.
 - I &#8212; Infected are individuals which are carrying the infection and can infect others.
 - R &#8212; Removed are those who were infected and now can't spread the disease anymore.

Let's consider the parameters of the model. The numbers of members in every epidemiological class at the moment *t* are *S(t)*, *I(t)* and *R(t)*. If the total population is *N*, we have *S(t) + I(t) + R(t) = N*. Moving between classes is only possible according to the pattern S &#8594; I &#8594; R.

## What does the script do?
Script calculates relevant values and plots figures.

## Installing the dependencies
The script requires signal package. To install the package, in octave execute:
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

Apart form outputs to the terminal the scripts plot figures. All four figures calling SIR.m script are given below (more plots can be found in the assets folder):

<img src="/assets/SIR-figure-1.png" width="45%" height="45%" /> <img src="/assets/SIR-figure-2.png" width="45%" height="45%" />
<img src="/assets/SIR-figure-3.png" width="45%" height="45%" /> <img src="/assets/SIR-figure-4.png" width="45%" height="45%" />

## Provide Feedback 👍

If you encounter any bugs or have suggestions, please file an issue in the [Issues][issues-url] section of the project.

[sir-model-url]: https://royalsocietypublishing.org/doi/pdf/10.1098/rspa.1927.0118
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
