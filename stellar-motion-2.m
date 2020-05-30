# Stellar Motion - Part 2

# Task 1
# This code loads the data from the previous project.
load starData

# Task 2
# Create a for loop with a loop index called c. The loop index should progress through all columns of spectra (1 to 7)
# In the loop body, extract the cth column of spectra to a variable named s
[sHa,idx] = min(spectra);
lambdaHa = lambda(idx);
z = lambdaHa/656.28 - 1;
speed = z*299792.458


# Tasks 3 - 5
# Create a loglog plot of s against lambda using a dashed line (--)
for c = 1:7
    s = spectra(:,c);

    if speed(c) <= 0
        loglog(lambda,s,"--")
    else
       loglog(lambda,s,"LineWidth",3) 
        title("Spectra")
        xlabel("Wavelength")
        ylabel("Intensity")
    end
    hold on
end
hold off


# Task 6
# Add a legend to the plot using the array starnames.
legend(starnames)

# Task 7
movaway = starnames(speed > 0) 