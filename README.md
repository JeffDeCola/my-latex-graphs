# my-latex-pgfplots-graphs

[![Maintainability](https://api.codeclimate.com/v1/badges/8b4765d37169a21f7f72/maintainability)](https://codeclimate.com/github/JeffDeCola/my-latex-pgfplots-graphs/maintainability)
[![Issue Count](https://codeclimate.com/github/JeffDeCola/my-latex-pgfplots-graphs/badges/issue_count.svg)](https://codeclimate.com/github/JeffDeCola/my-latex-pgfplots-graphs/issues)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://jeffdecola.mit-license.org)

`my-latex-pgfplots-graphs` _is a place to keep all my scientific
graphs by using LaTeX and the pgfplots package._

My
[LaTeX math mode cheat sheet](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/software/development/languages/latex-math-mode-cheat-sheet)
will have more information about LaTeX.

[GitHub Webpage](https://jeffdecola.github.io/my-latex-pgfplots-graphs/).

## LIST OF GRAPHS

## APPLIED MATHEMATICS

## PURE MATHEMATICS

### CHANGES

### FOUNDATIONS

### NUMBER SYSTEMS

### SPACES

### STRUCTURES

* $f(x) = y$

## UPDATE GITHUB WEBPAGE USING CONCOURSE (OPTIONAL)

For fun, I use concourse to update
[my-latex-pgfplots-graphs GitHub Webpage](https://jeffdecola.github.io/my-latex-pgfplots-graphs/)
and alert me of the changes via repo status and slack.

A pipeline file [pipeline.yml](https://github.com/JeffDeCola/my-latex-pgfplots-graphs/tree/master/ci/pipeline.yml)
shows the entire ci flow. Visually, it looks like,

![IMAGE - my-latex-pgfplots-graphs concourse ci pipeline - IMAGE](docs/pics/my-latex-pgfplots-graphs-pipeline.jpg)

The `jobs` and `tasks` are,

* `job-readme-github-pages` runs task
  [readme-github-pages.sh](https://github.com/JeffDeCola/my-latex-pgfplots-graphs/tree/master/ci/scripts/readme-github-pages.sh).

The concourse `resources types` are,

* `my-latex-pgfplots-graphs` uses a resource type
  [docker-image](https://hub.docker.com/r/concourse/git-resource/)
  to PULL a repo from github.
* `resource-slack-alert` uses a resource type
  [docker image](https://hub.docker.com/r/cfcommunity/slack-notification-resource)
  that will notify slack on your progress.
* `resource-repo-status` uses a resource type
  [docker image](https://hub.docker.com/r/dpb587/github-status-resource)
  that will update your git status for that particular commit.

For more information on using concourse for continuous integration,
refer to my cheat sheet on [concourse](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/software/operations-tools/continuous-integration-continuous-deployment/concourse-cheat-sheet).
