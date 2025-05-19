### Boundary values
Kaip maziausiais resursais ir efektyviausiausiais budais testuoti.

Pvz. 
Balsavimo biuletenis (balsuoti gali asmuo nuo 18m iki 50m):
1. amzius[18, 19, 49, 50] - balsuoti gali
2. amzius[17, 51] - balsuoti negali

galima ikelti iki 20 nuotrauku:
[1, 20, 21]


### Pesticide paradox

https://bugbug.io/blog/software-testing/pesticide-paradox/

The Pesticide Paradox in software testing is a principle stating that if the same set of test cases is executed repeatedly, they will eventually fail to detect new defects.

This concept, introduced by Boris Beizer in Software Testing Techniques, draws an analogy to how insects develop resistance to pesticides when the same chemicals are used repeatedly.

Implications of the Pesticide Paradox
Diminishing Effectiveness – Running the same test cases repeatedly only finds the defects they are designed to catch, missing newly introduced bugs.

Need for Test Case Evolution – Test cases must be regularly reviewed, modified, and expanded to remain effective.

Importance of Exploratory Testing – In addition to automated and scripted tests, exploratory testing can help uncover new defects.

Regression Testing Challenges – Automated regression tests should be updated as the application evolves to ensure they remain relevant.

How to Overcome the Pesticide Paradox
Review and update test cases to cover new functionalities and edge cases.

Use different testing techniques such as boundary value analysis, equivalence partitioning, and risk-based testing.

Incorporate exploratory testing alongside automated and manual testing.

Leverage AI/ML-based test automation to adapt and generate new test cases dynamically.

This paradox underscores the importance of continuous test improvement to maintain high software quality.