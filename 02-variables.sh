#!/bin/bash

# With out variables, names are repeated 

# echo "Ramesh : Hello Suresh, Good morning!!"
# echo "Suresh: Hi Ramesh, very good morning !!"
# echo "Ramesh : How are you Suresh"
# echo "Suresh : I am good, how are you Ramesh"

PERSON1=Naga          #there shouldn't be no space between variable name and value.
PERSON2=Babu

echo "$PERSON1 : Hello $PERSON2, Good morning!!"
echo "$PERSON2: Hi $PERSON1, very good morning !!"
echo "$PERSON1 : How are you $PERSON2"
echo "$PERSON2 : I am good, how are you $PERSON1"