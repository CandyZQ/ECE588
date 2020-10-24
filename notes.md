none is the original image

### Shuffling

* images tagged with 1 are shuffled in this method:

    - For each n x n block in the image (non-overlapping), randomly shuffle the content within
    - The pre-fix is the value of n

* images tagged with 2 are shuffled in this method:

    - For a certain number of times, we randomly select a pixel and exchange its value with another randomly selected pixel.
    - During multiple rounds, the same pixel might be selected. In fact, during the same round a pixel might end up exchanging position with itself
    - The prefix gives an overview of the number of times this operation is performed. Threqua for example is three quarter, and the number of times the operation is done is equal to the total number of pixels on the image times this coefficient (three quarter in this case)


### Conclusions thus far

The face detection software we used were able to detect faces in 

- ./images/ten1.jpg,61,405,370,95
- ./images/none.jpg,61,405,370,95
- ./images/one2.jpg,61,405,370,95
- ./images/fofif2.jpg,26,405,336,95
- ./images/threqua2.jpg,61,405,370,95
- ./images/twenty1.jpg,26,405,336,95

Face in fifty1.jpg, hundred1.jpg and two2.jpg are not detectable. However, it is also very hard for a human to tell that the face in fifty1.jpg and hudred1.jpg are faces, so that method of shuffling does not work. Two2.jpg, on the other hand, while having a very faint face outline, is still readable/detectable by human eyes, thus successful in the regard of processing image st it's not recognizable to computer but still recognizable to human