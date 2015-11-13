# Prog4
CS 1300 Programming Assignment 4

Part 1:  Basic alignment. (15 pts)    Download the data from the MUCT dataset described at http://www.milbo.org/muct/  That data has a set of face images and landmarks.   To apply face recognition we want the faces aligned.  Define a standard face image with specified size and desired location for the eyes and nose.   Write code to read the landmarks and using the eye centers and base of nose  to define an affine transformation mapping each image to your "standard" reference.  Apply the transformations to at least 10 images, showing the result.

Part 2: Least-squares alignment. (25 pts)   Using at least 10 different landmarks and do a least-squares estimate of an affine transform to align a face to the standard reference.  Show the result on the same images from Part 1.

Part 3:  Full alignment Morph: (25 pts)  Using the full set of mesh points define a standard reference.  Then using the images do a full-mesh image alignment for the same images as part 1 and 2. 

Part 4:  Face Morph:  (35 pts) Using 2 images, with the associated meshes,  do a blending morph from one face to another.  (E.g. see http://www.cs.cmu.edu/afs/andrew/scs/cs/15-463/f07/proj3/www/wwedler/ and http://www.cs.cmu.edu/afs/andrew/scs/cs/15-463/f07/proj3/www/wwedler/Morph60/Morph.wmv).   Make a moving showing both the morphing grid of point and the actual morphed face images.   


Extra Credit (30 pts):
Divided the full set of MUCT images into a training and test set, then use your eigenfaces from program 3 to estimate the rank 1 recognition rate using the different alignments.   
