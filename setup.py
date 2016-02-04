from distutils.core import setup
from distutils.extension import Extension
from Cython.Distutils import build_ext

setup(
  name = 'MamaPy',
  ext_modules=[
    Extension("MamaPy",
              sources=["MamaPy.pyx"], # Note, you can link against a c++ library instead of including the source
              language="c",
              include_dirs=['/opt/openmama/OpenMAMA/openmama_install_2.3.3/include/'],
              library_dirs=['/opt/openmama/OpenMAMA/openmama_install_2.3.3/lib/'],
              libraries=['mama']),
    ],
  cmdclass = {'build_ext': build_ext},
)
