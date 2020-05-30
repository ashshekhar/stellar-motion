# Stellar Motion

## Aim

We aim to determine stellar motion by calculating the `redshift` in its spectrum, using the `Hydrogen-alpha line`

## Background

Using a MATLAB script, we can easily calculate the `red shift` for any star in the data set. We could even perform the same operations for all of the stars in the collected data set.

In this porject, we have found the `Hydrogen-alpha` wavelength of all the stars by finding the `minimum value of their spectral intensities(s)`

## More Info

For some stars, the `Hydrogen-alpha line` occurs at the maximum intensity value, rather than the minimum. Therefore, a more robust approach is to find the maximum anomaly (difference from the mean), rather than the maximum or minimum spectral value. The anomaly is defined as the `absolute value of the difference between s and mean(s)`

## Code

1. `stellar-motion-1.m :` Calculates the wavelength of the `Hydrogen-alpha line` of `HD 94028 star` to be `656.62 nm` which is slightly larger than the observed value of `656.28 nm`

2. `stellar-motion-2.m :` Generates a spectra of all the stars as shown below to find their `Hydrogen-alpha line` and hence their wavelengths

## Output
![Graph Generated](https://github.com/ashshekhar/stellar-motion/blob/master/sm2-multiple.png)
