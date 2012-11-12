# MbUnit 2.x Test Results in Jenkins

`mbunit2-xlst` is an extension for the [xUnit-plugin](https://wiki.jenkins-ci.org/display/JENKINS/xUnit+Plugin)
that enables it to show test results for MbUnit 2.x tests in
[Jenkins](http://jenkins-ci.org/).

## Installation

1. Make sure you've installed the [xUnit Plugin](https://wiki.jenkins-ci.org/display/JENKINS/xUnit+Plugin).
2. Copy the `MbUnit2.xslt` file to your Jenkins server.

## Usage

1. When configuring your job, enable the xUnit Plugin and select the
   *Custom Tool* option.
2. Specify a pattern for MbUnit XML files to transform.
3. Specify the path to the `MbUnit2.xslt` stylesheet

## License

`MbUnit2.xlst` is covered under the MIT License. See LICENSE for more
information.
