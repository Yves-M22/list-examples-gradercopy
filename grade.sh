CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'

    if [[ -f student-submission/ListExamples.java ]]
    then
        echo 'Correct File'
    else
        echo 'Incorrect File'
        exit
    fi

file=student-submission/ListExamples.java
testFile=TestListExamples.java
cp -r $file $testFile grading-area/

CPATH=".:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar"
javac -cp $CPATH grading-area/TestListExamples.java

if [[]]
echo "Compile Successful"


# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests
