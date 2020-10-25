none is the original image

### Shuffling

pixels of image are shuffled, with neightbours, with random index, or the color is randomly shuffle up or down

* images tagged with 1 are shuffled in this method:

    - For each n x n block in the image (non-overlapping), randomly shuffle the content within
    - The pre-fix is the value of n

* images tagged with 2 are shuffled in this method:

    - For a certain number of times, we randomly select a pixel and exchange its value with another randomly selected pixel.
    - During multiple rounds, the same pixel might be selected. In fact, during the same round a pixel might end up exchanging position with itself
    - The prefix gives an overview of the number of times this operation is performed. Threqua for example is three quarter, and the number of times the operation is done is equal to the total number of pixels on the image times this coefficient (three quarter in this case)

* images tagged with 3 are shuffled this method:

    - For each pixel, we change its color
    - try: for each pixel with value x, change to y (keep record in a dict so that we reuse this value). y is determined by x[0]+randomint(0,80),x[1]-randomint(0,80),x[2]+randomint(-80,80)
    - tr: for each pixel with value x, we search if there's a corresponding value in dict. If not, manipulate on x, else, manipulate on the already manipulated value in dict (and afterwards store it as mapped to x). method same as try
    - t: same as tr, except all three RGB values are calculated with + randomint(-80,80), making the range larger


### Combining images

image is combined with another image (laid on top of each other)

* images tagged with 4:

    - These are combined with an image of tree. 
    - The prefix indicates the percentage of the original face in the new image (0.42*face + 0.58*tree for fourtwo)

* images tagged with 5:

    - These are combined with a stretched image of starry night. 


### Blocking

* images tagged with 6 are direct photos of people with gas masks on. One of which the mask covers the eye and one of which the mask doesn't. This provides a starting point for blocking

### Conclusions thus far

The face detection software we used were able to detect faces in 

./images/tr3.jpg,26,405,336,95
./images/try3.jpg,26,405,336,95
./images/ten1.jpg,61,405,370,95
./images/fifty5.jpg,26,405,336,95
./images/fourfi4.jpg,26,405,336,95
./images/one2.jpg,61,405,370,95
./images/fofif2.jpg,26,405,336,95
./images/threqua2.jpg,61,405,370,95
./images/none.jpg,61,405,370,95
./images/twenty1.jpg,26,405,336,95

Face in fifty1.jpg, hundred1.jpg, two2.jpg, t3.jpg, forty4.jpg, fourtwo4.jpg, fourtwo5.jpg, fourfive5.jpg, mny6.jpg, and my6.jpg are not detectable. 

- It is very hard for a human to tell that the face in fifty1.jpg and hudred1.jpg are faces, so that method of shuffling does not work. 

- two2.jpg, while still having a very faint face outline, is still readable/detectable by human eyes, thus successful in the regard of processing image st it's not recognizable to computer but still recognizable to human

- t3.jpg is very similar to two2.jpg, just with more colors, but still faint outline of human face hidden in between different colors.

- Both 4 and 5 tags indicate that at around 43% of visibility, the computer begins to lose track of whether there is a face or not. However, note that four tag 4 (tree), 45% is recognizable to computer, whereas for 5 (starry night), 45% is already not recognizable. This indicates that the choice of the coverage image also matters

*** "faintness" seem to be the key for "processing" image