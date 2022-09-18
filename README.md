# HRMS-Quality-assessment

1. Run rds_TO_csv.R for extracting the data. Each instance will have its own csv file ms2 mz and intensities. The name of each csv contains the name of the molecule, its collision energy, ionisation mode and precursor mz.
2. Run import-data.ipynb notebook to transfer the data into a file. The data is stored in a dictionary with "good" and "bad" keys.
3. main.ipynb contains all the code.
