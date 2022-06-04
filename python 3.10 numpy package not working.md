name: kevin wong

date: 06/03/2022

desc: used pip install numpy, but when running code with "import numpy as numpy" the compiler can't find numpy

### problem
  Initial install:
  - In pycharm, launch terminal "view > tool window > terminal"
  - update to most recent pip via: "python -m pip install -–upgrade pip"
  - pip install numpy

 - I run my dice rolling program, but compiler error: "ModuleNotFoundError: No module named 'numpy' "
  
 - I look for the numpy module and find its installed in a global path:
    C:\Python310\Lib\site-packages
    
 - But the path pycharm is searching for numpy is from is:
    C:\Users\kevin\PycharmProjects\pythonProject\venv\Lib\site-packages
    
 - So the question is how do I install numpy at that specific location above????
 
 - To get the numpy package into the directory above locally, it can be done multiple ways. At this point
 the problem is solved as long as you get the package into the local site-packages directory. $\checkmark$
 
  - I used a method specific to pycharm, but it installs the numpy package in the location I need it to be
    for the search algorithm to find numpy
      C:\Users\kevin\PycharmProjects\pythonProject\venv\Lib\site-packages\numpy
      
      and 
      
      C:\Users\kevin\PycharmProjects\pythonProject\venv\Lib\site-packages\numpy-1.22.4.dist-info
      
 ```
# Dice rolling probability 6 sided dice with 4 rolls
    # the probability of the sum of the four dice rolls
    # being an odd number
# Logically we should already suspect the sum being 
    # even or the sum being odd should fall around the 
    # 50% chance mark, but is this true? prove it.
import numpy as np

countOdd = 0

Num_Sides = 6

Rolls = []
SideValues = np.arange(1, Num_Sides + 1, 1)

print("\n List of Rolls:")
for Die_1 in SideValues:
    for Die_2 in SideValues:
        for Die_3 in SideValues:
            for Die_4 in SideValues:
                Roll = sorted([Die_1, Die_2, Die_3, Die_4]) # remove sorted: to show true permutations
                Rolls.append(Roll)

                ########### count odds ####################
                if (Die_1 + Die_2 + Die_3 + Die_4) % 2 != 0:
                    countOdd += 1
                ###########################################

                print("", Roll)

print("\nNumber of Possible Rolls :", len(Rolls))

########### count odds print ########
print("")
print("count odd sum:", countOdd)
print("")
#####################################

# ############## output #########
# Number of Possible Rolls : 1296
#
# count odd sum: 648
# ###############################
 ```
