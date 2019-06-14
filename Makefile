# Makefile for Splunk Spark Docker image

all:
	@echo Building splunk-spark image
	@docker build -t splunk/spark .
