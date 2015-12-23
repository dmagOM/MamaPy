# MamaPy
A set of python bindings for OpenMAMA

## Usage

The idea is that MamaPy should be very straight forward to use, requiring nothing more than a standard MAMA build and the required Python Module.

## Building the Bindings

If you're looking to build the bindings from scratch, you'll need a number of pre-requisites to be installed.
- A MAMA Release (initial development has been performed against MAMA 2.3.4).
- A compiler (GCC or equivalent)
- Python
- Cython

**TODO:** Add links, required versions and more details.

Once you have met the prerequisites, you will need to update the location of the MAMA libraries in a number of places, specifically:
- setup.py
- python.profile

**TODO:** Allow both of these to set values from elsewhere. 

From there it should be a simple case of building the bindings:

    $ python setup.py build_ext
