#!/bin/zsh

echo ensure you have homebrew installed
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
echo DONE!

echo verify installation
echo terraform -help
terraform -help
