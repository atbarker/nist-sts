# NIST Statistical Test Suite

This is a slightly updated version of [NIST Statistical Test Suite (STS)](http://csrc.nist.gov/groups/ST/toolkit/rng/documentation_software.html) tool for randomness testing. The original test suite would compile with horrible warnings under clang or gcc. It now compiles cleanly without warnings and a few cases of undefined behavior have been cleaned up.

## Building

Run make. Choose clang or gcc for the compiler. It works fine with both.

## Usage
You probably still want to [download](http://csrc.nist.gov/groups/ST/toolkit/rng/documentation_software.html) the original NIST ZIP distribution and use their test files. Reason why I'm not including them here is that the archive is over 40 MB big and most of that is the test data.

STS has somewhat old school terminal interface. Simple tutorial can be found in section 5-1 of [NIST SP800-22](http://csrc.nist.gov/groups/ST/toolkit/rng/documents/SP800-22rev1a.pdf).

Remember that testing results are written to _experiments\AlgorithmTesting\finalAnalysisReport.txt_ if you load tested data from a file. STS has a number of built-in generators, in which case the report will be written to a corresponding subdirectory of _experiments_.

## License

The [original license](http://csrc.nist.gov/groups/ST/toolkit/rng/documentation_software.html):

This software was developed at the National Institute of Standards and Technology by employees of the Federal Government in the course of their official duties. Pursuant to title 17 Section 105 of the United States Code this software is not subject to copyright protection and is in the public domain. The NIST Statistical Test Suite is an experimental system. NIST assumes no responsibility whatsoever for its use by other parties, and makes no guarantees, expressed or implied, about its quality, reliability, or any other characteristic. We would appreciate acknowledgment if the software is used.






