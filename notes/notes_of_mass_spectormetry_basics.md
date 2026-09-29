# Part 1 Amino Acids and Proteins

[slides](https://drive.google.com/file/d/0B4sW8rLWPbRyMy1PNmx3LVZfWXM/view?resourcekey=0-umlIVoZLwe3k9ZxBi-c44A)
[video](https://www.youtube.com/watch?v=bS78rIYvFBE)

the difference of the chemical structure of the amino acid is quite important 

the weight of each aa is quite important Leucin and Isoleucin have the same weight -> not have the same chemical structure 

[]("./assets/image.png")

pK-a -> acidity of the backbone -> needed
pK-b -> basicity  of the backbone
pK-x -> value of the sidechain of each aa -> are not common to give any proton away 
pI -> isoelectric point

iso electric focusing

U -> folded glutamin withouth any acidity or basicity

though the sidechain of each aa the values differ

peptide bond can be broken easily by heat or UV 

amino terminus start - carboxyl terminus is the end 

residue formula - chemical structure without the begin and end terminos of the polypeptide 

# Part 2 Mass spectrometry: Concepts and Components -> Ion Sources

[slides](https://drive.google.com/file/d/0B4sW8rLWPbRyMy1PNmx3LVZfWXM/view?resourcekey=0-umlIVoZLwe3k9ZxBi-c44A)
[video](https://www.youtube.com/watch?v=vXsotPtOdRY)

Generalized mass spectrometer containing: ion source - mass analyzers - detector

digitizer: sampling analog data to discrete values or a specific timeline; defines the resolution - nowadays the bottleneck is not the periodic digitizer rather the parts of the mass spectrometer

## Ion sources

**MADLI** Matrix assisted laser desorption and ionization

laser irradiation shots light onto the matrix molecule and they start to vibrate which lead to a desorption (fancy term for explosion)

ionization adds then a proton to the analyte to add some charge

Matrix mostly contains:
* CHCA 
* SA
* DHB

all have in common to have a benzin group -> absorbs the UV light 

during a MADLI experiment is easier to see the aromatic aa as they also have a benzin ring in them

all of them have also a carboxyl groug to donor a proton the analyte 

**ESI** Electrospray ionization

Sample will be pushed trough a needed in a fluent state
every drop which is charged will walk to the analyzer inlet - the non charged ones will start to evaporation only and hit the barrier

the bigger the peptide the charge

easy to automate ESI - so its quite common to use it with robots


molecules which are not ionized will not go into the analyzer

# Part 3 - Mass spectrometry: Concepts and Components -> Analyzers

[slides](https://drive.google.com/file/d/0B4sW8rLWPbRyMy1PNmx3LVZfWXM/view?resourcekey=0-umlIVoZLwe3k9ZxBi-c44A)
[video](https://www.youtube.com/watch?v=NKXhyjsgT1I)

**time of flight *TOF*** 

All input are only ions.

extraction plate is at a high voltage - goal: ions migrate to the extraction plate - ions will fly through it

the tubes are mostly longer than a meter

smaller ions will travel faster through the tube by the same charge state of the ions -> defined by the kinetic energy `E = (m*v^2)/2`

never mess mass and charge alone -> with `MALDI` the charge is always one -> easier equation

`m/z` -> mass over charge (`m/q`)

gravitational mass maybe == ionic mass -> here will be measured the ionic mass

small fluctuations are possible by measuring the TOF

calibration is **important**

**Ion Trap *IT***

think of it like box with a ring electrode which the ions travel through it

the ions can be trapped trough the DC/ACRF Voltage

smaller ions will escape faster than bigger ions 

timing of hitting the detector * the set voltage can be calculated to the ion mass of the detector -> this is not so accurate as TOF there is always a small error

**Quadrupole *Q***

this not used to measure a whole spectrum - its rather used to measure only one specific m/z

the rest will be ejected during the measurement -> this will go to waste

**Resolution**

high resolution is better - obviously

carbon 13 is the most important isotop  - monoisotopic carbon12

the bigger the peptide the more isotop of a molecule can be found - as the monoisotopic mass cant be identified directly

the differences between the peaks can be used to calculate the monoisotopic mass 

the Ion Trap though uses still the average m/z as it does not have a high resolution

# Part 4 - Mass spectrometry -> Detectors

[slides](https://drive.google.com/file/d/0B4sW8rLWPbRyMy1PNmx3LVZfWXM/view?resourcekey=0-umlIVoZLwe3k9ZxBi-c44A)
[video](https://www.youtube.com/watch?v=lxtPIyFnzGk)

really a complicate architecture of the detectors

synthetic analytes which are enhanced with protons - should be expected to the right of the biological sample to get recalculate back to the relative occurrences to the synthetic one

sigma curve typical for every detector -> looks like the "verteilfunktion" of the "normalverteilung"

the relative error is quite high outside the borders so the detector only works quite good in a specific interval

best detection in the near of 1/1

detector needs to changed frequently - these are not stable 