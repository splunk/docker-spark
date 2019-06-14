# Makefile for Splunk Spark Docker image

.PHONY: all splunk-spark

all: splunk-spark

splunk-spark:
	@echo Building splunk-spark image
	@docker build -t splunk-spark .
