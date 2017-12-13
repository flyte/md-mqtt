packages: sdist wheel2 wheel3 clean

sdist:
	python setup.py sdist

wheel2:
	python2 setup.py bdist_wheel

wheel3:
	python3 setup.py bdist_wheel

clean:
	rm -rf .cache .eggs build *.egg-info
	find md_mqtt -type d -name __pycache__ -exec rm -rf {} \;
