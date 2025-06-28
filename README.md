# Robot Framework API Automation Demo

## Robot Framework Introduction
[Robot Framework](http://robotframework.org) is a generic open source
automation framework for acceptance testing, acceptance test driven
development (ATDD), and robotic process automation (RPA). It has simple plain
text syntax and it can be extended easily with libraries implemented using
Python or Java.

Robot Framework project is hosted on GitHub where you can find source code,
an issue tracker, and some further documentation. Downloads are hosted on PyPI, except
for the standalone JAR distribution that is on Maven central.

Robot Framework development is sponsored by [Robot Framework Foundation](http://robotframework.org/foundation).

[GitHub](https://github.com/robotframework/robotframework)

[PyPI](https://pypi.python.org/pypi/robotframework)

[Maven central](http://search.maven.org/#search%7Cga%7C1%7Ca%3Arobotframework)

## Installation
1. Download and Install [Python3](https://www.python.org/downloads/). 
2. Check Python installation
    `python3 -V`

3. Install [pip3](https://pip.pypa.io/).
4. Check pip installation
    `pip3 -V`

5. Install Robot Framework & necessary Librarires like Requests and Jsonlibrary
   Create "softwarereq.txt" file with content below
   robotframework
   robotframework-requests
   robotframework-jsonlibrary 

    `pip3 install -r softwarereq.txt`
    
6. Download and install VSCode [VSCode](https://code.visualstudio.com/docs/?dv=osx "VSCode").
7. Install [Robot Code](https://marketplace.visualstudio.com/items?itemName=d-biehl.robotcode "Robot Code") extension from VSCode's Marketplace

## Example
Here, I have developed sample test cases for a sample API project [JSONPlaceholder](https://jsonplaceholder.typicode.com/guide/).

This project is developed to demontrate API automation using Robot Framework and Requests Library.

## File organization
```
|- rf-api-testing/       // Home folder for robot API automation project
  |- configs/app-variables.robot             // Common variables of the application
  |- configs/env-variables.robot            // Test execution environment configurations
  |- resources/appi-keywords.robot         // Common API keywords of the application
  |- testcases/*.robot                    // Test cases of the application
|- results                               // Test results will be saving here
|- softwarereq.txt                      // Libraries to be installed 
|- robot_tests.sh         // Command to be executed to run test cases : python3 -m robot -v env:sit -i Smoke -d results testcases
     
|- .gitignore                                                     // Excluded the unnecessary files in the repo
|- README.md                                                      // This file
```

## Usage
Starting from Robot Framework 3.0, tests are executed from the command line
using the ``robot`` script or by executing the ``robot`` module directly
like ``python -m robot`` or ``jython -m robot``.

The basic usage is giving a path to a test (or task) file or directory as an
argument with possible command line options before the path

    python3 -m robot -v env:sit -i Smoke -d results path/to/tests/
    python3 -m robot -v env:sit -i Smoke -d results test-cases

 OR
 
sh robot.sh 

"***-v***" refers to the variables. To replace a declared value within the code, you can specify a variable name and value.

"***-i***" refers to the tags. To run only a selected group of tests, you may specify a tag name.

"***-d***" refers to the test results. The location to save the test results can be specified here.

Additionally there is ``rebot`` tool for combining results and otherwise
post-processing outputs

    rebot --name Example output1.xml output2.xml

Run ``robot --help`` and ``rebot --help`` for more information about the command
line usage. For a complete reference manual see [Robot Framework User Guide](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html "Robot Framework User Guide").


