from setuptools import setup, find_packages

setup(
    name='StegoCracker_V_1.0',
    version='1.0.0.0',
    packages=find_packages(),
    url='https://github.com/W1LDN16H7/StegoCracker.git',
    license='Apache Licence 2.0',
    author='kapilkumar aka TH3W1LDN1GHT',
    scripts=['StegoCracker/Stego'],
    author_email='roberthoodhood2@gmail.com',
    description='A Tool to perform styeganography with audio and image files',
    install_requires=[
            "pydub>=0.25.1",
            "opencv-python>=4.5.2.52",
            "pyfiglet>=0.8",
            "numpy>=1.20.2",
            "setuptools>=44.1",
    ],
)
